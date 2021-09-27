require 'active_record'

def connect_db!
  ActiveRecord::Base.establish_connection(
    host: '127.0.0.1', 
    adapter: 'postgresql',
    database: 'saas_db', 
    user: 'postgres', 
    password: 'master'
  )
end