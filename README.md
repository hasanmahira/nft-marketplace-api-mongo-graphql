# README

This README would normally document whatever steps are necessary to get the
application up and running.

This Ruby on Rails project is boosted with GraphQl and MongoDB

This API provides Login, Register, Nft File Data processes data

Things you may want to cover:

- Ruby version is '2.7.4'

- Rails version is '6.1.4'

- GraphQL version is '1.11.6'

- Database mongoid version 7.0.13
  I couldn't get mongodump backup on my win10 computer but I exported data on json format from MongoDBCompass and added to project folder nft_files.json and users.json files I believe u can import from there
  rails s mongoid::config
  after that go to http://localhost:3100/register page and create new user
  or
  rails console
  user = new User(user_name:"mates", name:"Mahir",surname:"Ates",email:"mates@gmail.com",password_digest:"123",bdate:"24/07/1996",created_at:"now()",updated_at:"now")
