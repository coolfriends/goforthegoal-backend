# app.rb
require 'roda'
require 'logger'
require 'json'


class App < Roda
  plugin :json

  db = JSON.parse(File.read('db.json'))
  users = db['users']
  route do |r|
    # /api
    r.on 'api' do
      # /api/v1
      r.on 'v1' do
        # /api/v1/users
        r.on 'users' do
          # GET /api/v1/users/{email}
          r.get String do |email|
            user = users.find { |u| u['email'] == email }
            { user: user }
          end
          # GET /api/v1/users
          r.get do
            users
          end
          # POST /api/v1/users
          r.post do
            j = JSON.parse r.body.read
            users << {
              email: j['email'],
              password: j['password']
            }
            File.write('db.json', db.to_json)
            { status: 'Success', email: j['email'] }
          end
        end
      end
    end
  end
end
