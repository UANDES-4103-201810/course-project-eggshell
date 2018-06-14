# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create  :email => "admin@gmail.com", :password => "admin123", :admin => true
project1 = Project.create :User_id =>1, :name =>"HS Holy Grial",:description =>"New epoxy material in the game",:goal=>500000, :money_colected=>123210,:expiration_date =>" 2033-09-03",state:"waiting",start_date:"2018-09-02",created_at:false,updated_at:false
project2 = Project.create :User_id =>1, :name =>"Piano Bot",:description =>"Artificial intelligence  piano player",:goal=>100000, :money_colected=>32000,:expiration_date =>" 2019-09-03",state:"waiting",start_date:"2018-09-02",created_at:false,updated_at:false
project3 = Project.create :User_id =>1, :name =>"Boutique Laptop",:description =>"Laptop for the lovers of the old´s writing machine ",:goal=>100000, :money_colected=>32000,:expiration_date =>" 2019-09-03",state:"waiting",start_date:"2018-09-02",created_at:false,updated_at:false
project4 = Project.create :User_id =>1, :name =>"Artificial Wave co",:description =>"First artificial wave made by kelly slater x9 world champ",:goal=>5000000, :money_colected=>3000,:expiration_date =>" 2019-09-03",state:"waiting",start_date:"2018-09-02",created_at:false,updated_at:false

Multimedia.create(project_id:1, profile_id:nil, image: File.new('app/assets/images/hs.jpg', 'r'))
Multimedia.create(project_id:2, profile_id:nil, image: File.new('app/assets/images/pianobot.jpg', 'r'))
Multimedia.create(project_id:3, profile_id:nil, image: File.new('app/assets/images/laptop.jpg', 'r'))
Multimedia.create(project_id:4, profile_id:nil, image: File.new('app/assets/images/kelly.png', 'r'))


featured1 = Featured.create :Project_id => 1
featured2 = Featured.create :Project_id => 2
promise1 = Promise.create :Project_id =>1, :value => 2, :condition =>"recieve a nice spaceX hut"
promise2 = Promise.create :Project_id =>2, :value => 2, :condition =>"recieve a nice spaceX hut"
promise3 = Promise.create :Project_id =>2, :value => 4, :condition =>"recieve a nice spaceX shirt"
profile1 = Profile.create :User_id => 1, :name => "Admin", :nacionality => "USA", :age => 34, :sex => "Male"
User.create  :email => "admin1@gmail.com", :password => "admin123", :admin => false
User.create  :email => "admin2@gmail.com", :password => "admin123", :admin => false
User.create  :email => "admi3n@gmail.com", :password => "admin123", :admin => false
User.create  :email => "admin4@gmail.com", :password => "admin123", :admin => false
Profile.create :User_id => 2, :name => "Admin", :nacionality => "USA", :age => 34, :sex => "Male"
Profile.create :User_id => 3, :name => "Cristobal", :nacionality => "USA", :age => 34, :sex => "Male"
Profile.create :User_id => 4, :name => "Juan", :nacionality => "USA", :age => 31, :sex => "Male"
Profile.create :User_id => 5, :name => "Diego", :nacionality => "USA", :age => 24, :sex => "Male"
