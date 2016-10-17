# CONTACTS APP

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 contacts database
db = SQLite3::Database.new("contacts.db")

# create a phone_types table
create_phone_types_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS phone_types (
    id INTEGER PRIMARY KEY,
    phone_type VARCHAR(255)
  );
SQL

db.execute(create_phone_types_table_cmd)
# db.execute("DROP * FROM phone_types")
db.execute("INSERT INTO phone_types (phone_type) VALUES ('mobile')")
db.execute("INSERT INTO phone_types (phone_type) VALUES ('home')")
db.execute("INSERT INTO phone_types (phone_type) VALUES ('work')")

# phone_types = db.execute("SELECT * FROM phone_types")
# p phone_types

# create a contacts table
create_contacts_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS contacts (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    phone INTEGER,
    phone_types_id INTEGER,
    FOREIGN KEY (phone_types_id) REFERENCES phone_types(id)
  );
SQL

db.execute(create_contacts_table_cmd)


# add contact method
def create_contact(db, first_name, last_name, email, phone, phone_types_id)
  db.execute("INSERT INTO contacts (first_name, last_name, email, phone, phone_types_id) VALUES (?, ?, ?, ?, ?);", [first_name.downcase, last_name.downcase, email.downcase, phone, phone_types_id])
end

#remove contact method
def remove_contact(db, r_first_name, r_last_name)
  # db.execute("DELETE FROM contacts WHERE first_name=#{r_first_name}")
  db.execute("DELETE FROM contacts WHERE first_name=? AND last_name=?", [r_first_name.downcase, r_last_name.downcase])
end

# edit contact method
def edit_contact(db, first_name, last_name, field, new_data)
  #db.execute("UPDATE contacts SET ?=? WHERE first_name=? AND last_name=?", [field, new_data, first_name, last_name])
  db.execute("UPDATE contacts SET #{field}=? WHERE first_name=? AND last_name=?", [new_data, first_name, last_name])
end

# print contacts method
def print_contacts(db)
  puts "-" * 60
  contacts = db.execute("SELECT * FROM contacts JOIN phone_types ON contacts.phone_types_id = phone_types.id")
  contacts.each do |contact|
    puts "Name: #{contact[1].capitalize} #{contact[2].capitalize}"
    puts "Email: #{contact[3]}"
    puts "#{contact[7].capitalize}: #{contact[4]}"
    puts "-" * 60
  end
end

# print search results method
def print_search_results(db, search_term)
  puts "-" * 60
  search_term = '%' + search_term + '%'
  contacts = db.execute("SELECT * FROM contacts WHERE first_name LIKE ? OR last_name LIKE ? OR email LIKE ? OR phone LIKE ?", [search_term, search_term, search_term, search_term])
  contacts.each do |contact|
    puts "Name: #{contact[1].capitalize} #{contact[2].capitalize}"
    puts "Email: #{contact[3]}"
    puts "Phone: #{contact[4]}"
    puts "-" * 60
  end
end


# user interface
valid_input = ['l', 's', 'a', 'r', 'e', 'q']
input = nil
puts "Welcome to your contacts app."
while input != 'q'
  while !valid_input.include?(input)
    puts ""
    puts "To view your current contacts list....enter 'l'"
    puts "To search contacts....................enter 's'"
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
    print_search_results(db, search_term)
    input = nil
  when 'a'
    new_contact = []
    puts "Enter the following information for the contact you would like to add."
    print "First Name:"
    new_contact << gets.chomp
    print "Last Name:"
    new_contact << gets.chomp
    print "Email Address:"
    new_contact << gets.chomp
    print "Phone Number:"
    new_contact << gets.chomp
    print "Phone Type (m for mobile, h for home, w for work)"
    phone_type = gets.chomp
    if phone_type == 'm'
      new_contact << 1
    elsif phone_type == 'h'
      new_contact << 2
    elsif phone_type == 'w'
      new_contact << 3
    end
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
    puts "Please enter the following information for the contact you wish to update."
    print "First Name:"
    e_first_name = gets.chomp.downcase
    print "Last Name:"
    e_last_name = gets.chomp.downcase
    print "Data Field ('f' for First Name, 'l' for Last Name, 'e' for Email Address, 'p' for Phone Number):"
    e_field_letter = gets.chomp.downcase
    case e_field_letter
    when 'f'
      e_field = "first_name"
    when 'l'
      e_field = "last_name"
    when 'e'
      e_field = "email"
    when 'p'
      e_field = "phone"
    end
    print "New Data:"
    e_new_data = gets.chomp.downcase
    edit_contact(db, e_first_name, e_last_name, e_field, e_new_data)
    input = nil
  end
end

