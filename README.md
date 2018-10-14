# goforthegoal-backend

Backend piece of the goforthegoal application. This application is used to
fufill all your goalsetting and project completion needs. Whether you need
to finish a research paper or learn a new language.

## Usage
Download the repository
```bash
git clone https://github.com/coolfriends/goforthegoal-backend.git
```

Install ruby deps
```bash
bundle install
```

Check the available Rake tasks
```bash
rake -T
```

Create an empty DB
```bash
rake db.json
```

Start the server
```bash
sudo bundle exec puma config.ru -p 80 
```

Create a new user (this stores in plaintext for now)
```
curl -d '{"email":"kyri", "password":" wow"}' \ 
     -H "Content-Type: application/json" \
     -X POST http://localhost:80/api/v1/users 
```

Get all users
```
curl http://localhost:80/api/v1/users
```

Get one user
```
curl http://localhost:80/api/v1/users/kyri
```

Regenerate the DB
```
rm db.json
rake db.json
```

## Development

Download the repository
```
git clone https://github.com/coolfriends/goforthegoal-backend.git
```

Make a new feature branch
```
git checkout -b my-cool-feature
```

Make your changes and commit them
```
git commit -am "Wow I really did it"
```

Push your changes to your feature branch
```
git push origin my-cool-feature
```

Then make your pull request in GitHub.
[See this for more information](https://yangsu.github.io/pull-request-tutorial/)
