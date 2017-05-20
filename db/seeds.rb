# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#!/usr/bin/ruby

require 'sqlite3'

begin
	db = SQLite3::Database.open 'db/development.sqlite3'
	initialPath = "app/assets/images/"
	photoIndex = 1;
	finalPath = ".jpg"

	numberOfPhotos = 5
	alumnsPhotos = Array.new(numberOfPhotos)       
	

	for i in (1 .. numberOfPhotos )
		photoFile = initialPath + photoIndex.to_s + finalPath
		photoIndex = photoIndex + 1
		fin = File.open(photoFile , "rb")

    	img = fin.read
    	alumnsPhotos[i] = img

    	fin.close if fin 
		
	end

    for i in (1 .. numberOfPhotos)
    	bar_code = i.to_s + i.to_s + i.to_s + i.to_s + i.to_s + i.to_s
    	db.execute "insert into alumns(name , image , bar_code , created_at , updated_at) 
    				values( ? , ? , ? , '12:30:40' , '12:40:40')" , i.to_s , alumnsPhotos[i] , bar_code
     
    end

	ensure
    	db.close if db

    for i in (1 .. numberOfPhotos)
    	bar_code = i.to_s + i.to_s + i.to_s + i.to_s + i.to_s + i.to_s
    	alumn = Alumn.find_by_bar_code bar_code

    	if alumn.bar_code  == "111111"
    		alumn.update :name => 'Leonardo Arthur'
    	elsif alumn.bar_code  == "222222"
    		alumn.update :name => 'Filipe Coelho'
    	elsif alumn.bar_code  == "333333"
    		alumn.update :name => 'Matheus Batista'
    	elsif alumn.bar_code  == "444444"
    		alumn.update :name => 'André Filho'
    	elsif alumn.bar_code  == "555555"
    		alumn.update :name => 'Meu nome é dougras'
    	else
    		# nothing to do
    	end
    	
    end

    
end