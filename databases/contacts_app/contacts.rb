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


# add contact method
def create_contact(db, first_name, last_name, email, phone, phone_types_id)
  db.execute("INSERT INTO contacts (first_name.downcase, last_name.downcase, email.downcase, phone, phone_types_id) VALUES (?, ?, ?, ?, ?);", [first_name, last_name, email, phone, phone_types_id])
end

#remove contact method
def remove_contact(db, r_first_name, r_last_name)
  # db.execute("DELETE FROM contacts WHERE first_name=#{r_first_name}")
  db.execute("DELETE FROM contacts WHERE first_name=? AND last_name=?", [r_first_name, r_last_name])
end

# print contacts method
def print_contacts(db)
  puts "-" * 60
  contacts = db.execute("SELECT * FROM contacts")
  contacts.each do |contact|
    puts "Name: #{contact[1].capitalize} #{contact[2].capitalize}"
    puts "Email: #{contact[3]}"
    puts "Phone: #{contact[4]}"
    puts "-" * 60
  end
end

#print search results method
def print_search_results(db, search_term)
  puts "-" * 60
  contacts = db.execute("SELECT * FROM contacts WHERE first_name=?", [search_term])
  contacts.each do |contact|
    puts "Name: #{contact[1].capitalize} #{contact[2].capitalize}"
    puts "Email: #{contact[3]}"
    puts "Phone: #{contact[4]}"
    puts "-" * 60
  end
end



# create_contact(db, Faker::Name.first_name, Faker::Name.last_name, Faker::Internet.email, Faker::PhoneNumber.phone_number, 1)

# print_contacts(db)
# remove_contact(db, "Deven", "Dare")
# print_contacts(db)


# user interface

valid_input = ['l', 's', 'a', 'r', 'e', 'q']
input = nil
puts "Welcome to your contacts app."
while input != 'q'
  while !valid_input.include?(input)
    puts ""
    puts "To view your current contacts list....enter 'l'"
    puts "To search contacts by first name......enter 's'"
    puts "To add a contact......................enter 'a'"
    puts "To remove a contact...................enter 'r'"
    puts "To edit a contact.....................enter 'e'"
    puts "To quit the app.......................enter 'q'"

    input = gets.chomp
  end

  case input
  when 'l'
    print_contacts(db)
    input = nil
  when 's'
    puts "Enter a name, email, or phone number you would like to search for."
    search_term = gets.chomp
    print_search_results(db, search_term.capitalize)
    input = nil
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
    input = nil
  when 'r'
    puts "Enter the following information for the contact you would like to add."
    print "First Name:"
    r_first_name = gets.chomp
    print "Last Name:"
    r_last_name = gets.chomp
    remove_contact(db, r_first_name, r_last_name)
    input = nil
  when 'e'
    input = nil
  end
end

