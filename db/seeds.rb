# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
guardian_api_key = "e2c85747-bf45-497b-9375-da07ae47d572"


hn_stories_json = RestClient.get("https://hacker-news.firebaseio.com/v0/topstories.json?print=pretty")
hn_stories_arr = JSON.parse(hn_stories_json)

hn_stories_arr.each do |story|
  story_json = RestClient.get("https://hacker-news.firebaseio.com/v0/item/#{story}.json?print=pretty")
  story_object = JSON.parse(story_json)
  Story.create(
    title: story_object["title"],
    author: story_object["by"],
    category: "tech",
    url: story_object["url"],
    time: Time.at(story_object["time"])
  )
end





0
