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

# #add a test contact
# db.execute("INSERT INTO contacts (first_name, last_name, email, phone, phone_types_id)
#   VALUES ('Patrick', 'Anderson', 'Patrick.Anderson.000@gmail.com', 7604278394, 1);")

# add contact
def create_contact(db, first_name, last_name, email, phone, phone_types_id)
  db.execute("INSERT INTO contacts (first_name, last_name, email, phone, phone_types_id) VALUES (?, ?, ?, ?, ?);", [first_name, last_name, email, phone, phone_types_id])
end

create_contact(db, 'Patrick', 'Anderson', 'Patrick.Anderson.000@gmail.com', 7604703643, 1)

# print database
contacts = db.execute("SELECT * FROM contacts")
contacts.each do |contact|
  puts "Name: #{contact[1]} #{contact[2]}"
end