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
    street_address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    zip_code INTEGER,
    email VARCHAR(255),
    phone INTEGER,
    phone_types_id INTEGER
  );
SQL

db.execute(create_table_cmd)

#add a test contact
db.execute("INSERT INTO contacts (first_name, last_name, street_address, city, state, zip_code, email, phone, phone_types_id)
  VALUES ('Patrick', 'Anderson', '8402 Twin Oaks Rd', 'Topeka', 'Kansas', 67234, 'Patrick.Anderson.000@gmail.com', 7604278394, 1);")

#print database
contacts = db.execute("SELECT * FROM contacts")
puts contacts.class
p contacts