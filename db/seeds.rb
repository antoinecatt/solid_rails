# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(email: 'email@email.com', password: '12345678', password_confirmation: '12345678')

thing1 = Thing.find_or_create_by(name: 'number1', description: 'first thing', user_id: 1)
thing2 = Thing.find_or_create_by(name: 'number2', description: 'second thing')
thing3 = Thing.find_or_create_by(name: 'number3', description: 'third thing')
thing4 = Thing.find_or_create_by(name: 'number4', description: 'fourth thing')

if Thing.all.count < 200
  200.times do
    user.things.create(name: Forgery(:lorem_ipsum).words(2, :random => true), 
                 description: Forgery(:lorem_ipsum).words(2, :random => true))
  end
end