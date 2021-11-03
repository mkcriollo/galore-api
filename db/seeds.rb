# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Gets Api & seeds data with new Events

  url = "https://api.getgalore-staging.com/v1/events"
  response = RestClient.get(url,{
    Api_Key: "#{ENV["KEY"]}"
  })
  events = JSON.parse(response)

  # binding.pry

  events["activities"].each do |event|
    main_title = event["title"]
    company_name = event.dig("organization","name")
    about_info = event.dig("organization","about")
    email_info = event.dig("organization","email")
    phone_num = event.dig("organization","phone")
    website = event.dig("organization","link")
    main_photo = event["photos"][0]["small_url"]
    street_name = event.dig("activity_location", "location", "line1")
    city_name = event.dig("activity_location","location","city")
    state_name = event.dig("activity_location","location","state")
    postal_num = event.dig("activity_location","location","postal")
    spots = event["available_spots"]
    price = event["price"]
    currency = event["currency"]

    Event.create(title: main_title, company_name: company_name, about: about_info, email: email_info, phone: phone_num, web_link: website, photo: main_photo, street: street_name, city: city_name, state: state_name, postal: postal_num, available_spots: spots, price: price, currency: currency)
  end

  # binding.pry

