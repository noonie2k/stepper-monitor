# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
adam = User.create({ name: 'Adam' })

Step.delete_all
'2012-01-01'.to_date.upto(Time.now.to_date) do |d|
  adam.steps.create({ date: d.strftime("%Y-%m-%d"), steps: rand(3000..6000) })
end
