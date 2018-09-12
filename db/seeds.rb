# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Cat.destroy_all
  cats = Cat.create([
    {name: 'Fluffy', sex: 'F', color: 'grey', birth_date: '1/1/2016', description: 'The fluffiest cat around!' },
    {name: 'Puma', sex: 'M', color: 'black', birth_date: '1/1/2016', description: 'The scariest cat around!' },
    {name: 'Tom-Tom', sex: 'M', color: 'orange', birth_date: '3/9/2011', description: 'The oldest cat around!' },
    {name: 'Steve', sex: 'F', color: 'calico', birth_date: '29/8/2018', description: 'The cohort cat!' }
    ])
    
  CatRentalRequest.destroy_all
    
  rental_requests = CatRentalRequest.create([
    {cat_id: cats[1].id, start_date: '25/3/2017', end_date: '27/3/2017', status: 'PENDING'},
    {cat_id: cats[1].id, start_date: '26/3/2017', end_date: '29/3/2017', status: 'PENDING'},
    {cat_id: cats[1].id, start_date: '27/3/2017', end_date: '29/3/2017', status: 'PENDING'},
    {cat_id: cats[1].id, start_date: '24/3/2017', end_date: '26/3/2017', status: 'PENDING'},
    {cat_id: cats[2].id, start_date: '25/3/2017', end_date: '27/3/2017', status: 'PENDING'}
    ])  
    
    