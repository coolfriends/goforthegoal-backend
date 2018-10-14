#!/usr/bin/env rake
# Rakefile
require 'json'

task :app do
  require "./app"
end

desc 'Create a DB file'
file 'db.json' do
  empty_db = {
    users: []
  }
  File.write 'db.json', empty_db.to_json
end
