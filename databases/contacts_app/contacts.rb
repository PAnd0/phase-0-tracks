# CONTACTS APP

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 contacts database
db = SQLite3::Database.new("contacts.db")

# create a contacts table
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS contacts (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    phone INTEGER,
    phone_types_id INTEGER
  );
SQL

db.execute(create_table_cmd)


# add contact
def create_contact(db, first_name, last_name, email, phone, phone_types_id)
  db.execute("INSERT INTO contacts (first_name, last_name, email, phone, phone_types_id) VALUES (?, ?, ?, ?, ?);", [first_name, last_name, email, phone, phone_types_id])
end

# 3.times do
#   create_contact(db, Faker::Name.first_name, Faker::Name.last_name, Faker::Internet.email, Faker::PhoneNumber.phone_number, rand(3))
# end

# print contacts
def print_contacts(db)
  puts "-" * 60
  contacts = db.execute("SELECT * FROM contacts")
  contacts.each do |contact|
    puts "Name: #{contact[1]} #{contact[2]}"
    puts "Email: #{contact[3]}"
    puts "Phone: #{contact[4]}"
    puts "-" * 60
  end
end

# user interface

valid_input = ['l', 'c', 'a', 'r', 'e', 'q']
input = nil
while !valid_input.include?(input)
  puts "Welcome to your contacts app."
  puts "-" * 60
  puts "To view your current contacts list....enter 'l'"
  puts "To view a single contact..............enter 'c'"
  puts "To add a contact......................enter 'a'"
  puts "To remove a contact...................enter 'r'"
  puts "To edit a contact.....................enter 'e'"
  puts "To quit the app.......................enter 'q'"

  input = gets.chomp
end

case input
when 'l'
  print_contacts(db)
when 'c'
when 'a'
  new_contact = []
  puts "Enter the following information for the contact you would like to add."
  puts "First Name:"
  new_contact << gets.chomp
  puts "Last Name:"
  new_contact << gets.chomp
  puts "Email Address:"
  new_contact << gets.chomp
  puts "Phone Number:"
  new_contact << gets.chomp
  puts "Phone Type (m for mobile, h for home, w for work)"
  new_contact << gets.chomp
  create_contact(db, new_contact[0], new_contact[1], new_contact[2], new_contact[3], new_contact[4])
when 'r'
when 'e'
when 'q'
end

# # drop contacts table
# db.execute("DROP TABLE contacts;")