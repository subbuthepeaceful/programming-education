# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Topic.delete_all
Topic.create([
  { title: 'Ruby on Rails'},
  { title: 'HTML5/CSS3'},
  { title: 'Javascript'},
  { title: 'System Administration'},
  { title: 'Amazon Web Services'},
  { title: 'BackboneJS'},
  { title: 'RSpec/Cucumber'},
  { title: 'Data Modeling'}
])

Project.delete_all
Project.create([
  { title: "Movie reviews", description: "Many good movies", start_date: DateTime.now.to_date },
  { title: "Simple Store", description: "A Simple Store", start_date: DateTime.now.advance(years: -1).to_date },
  { title: "Project Tracking", description: "A few good projects", start_date: DateTime.now.advance(months: 3).to_date },
  { title: "Social Networking", description: "Connect and find", start_date: DateTime.now.advance(days: 23).to_date },
  { title: "Simple Blog", description: "All the news you need", start_date: DateTime.now.advance(years: -5).to_date },
  { title: "Social Commerce", description: "Shop together", start_date: DateTime.now.to_date },
  { title: "Report Builder", description: "Hate reports?", start_date: DateTime.now.advance(months: -6).to_date },
  { title: "Data Visualizer", description: "D3 for magic data viz.", start_date: DateTime.now.advance(years: 2).to_date },
  { title: "Water supply tracking", description: "Water, water nowhere", start_date: DateTime.now.advance(days: 12).to_date },
  { title: "Homes for rent", description: "Where the heart is", start_date: DateTime.now.to_date }
])

Project.all.each do |project| 
  project.topics << Topic.all.shuffle[0..3]
end
