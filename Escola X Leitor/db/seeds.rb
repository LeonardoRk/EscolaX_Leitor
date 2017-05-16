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

    fin = File.open("app/assets/images/escolaInicial.jpg" , "rb")
    img = fin.read
    
rescue SystemCallError => e      
    puts e
ensure
    fin.close if fin 
end

begin
    db = SQLite3::Database.open 'db/development.sqlite3'

    db.execute "insert into alumns(name , image , created_at , updated_at) values('leonardo' , ? , '12:30:40' , '12:40:40')" , img
    
rescue SQLite3::Exception => e 
    
    puts "Exception occurred here"
    puts e
    
ensure
    db.close if db
end