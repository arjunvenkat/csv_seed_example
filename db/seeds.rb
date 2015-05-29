# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


    require 'csv'

    csv_text = File.read('lib/seeds/real_estate_transactions.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      t = Transaction.new
      t.street = row['street']
      t.city = row['city']
      t.zip = row['zip']
      t.zip = row['zip']
      t.state = row['state']
      t.beds = row['beds']
      t.sq_feet = row['sq_feet']
      t.category = row['type']
      t.sale_date = DateTime.parse(row['sale_date'])
      t.price = row['price']
      t.lat = row['latitude']
      t.lng = row['longitude']
      t.save
      puts "#{t.street}, #{t.city} saved"
    end

    puts "There are now #{Transaction.count} rows in the transactions table"

# csv = CSV.parse(csv_text, :headers => true)
# csv.each do |row|
#   Moulding.create!(row.to_hash)
# end
