require 'faker'

100.times do
    city = City.create(name: Faker::Address.city)
    dogsitter = DogSitter.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
    dog = Dog.new(nickname: Faker::Creature::Dog.name)
    stroll = Stroll.new
    dog.city = city
    dogsitter.city = city
    #stroll.city = city
    dog.save
    dogsitter.save
    stroll.save
end