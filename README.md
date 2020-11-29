# league-side

1. Ran with ```rails new league-side --api --database=postgresql```
2. ```bundle install```
3. DB connection info in config/database.yml (PostgreSQL)
  ```
    database: league_side_development
    username: league_side
    password: test
  ```
4. ```rails db:drop db:create db:migrate db:seed```
5. Create league endpoint: 
  ```
    curl --request POST \
      --url http://localhost:3000/leagues \
      --header 'Content-Type: application/json' \
      --data '{
      "name": "Big League",
      "latitude": 1.5,
      "longitude": 1.5,
      "purchase_price": 3500
    }'
  ```
6. Find leagues endpoint:
  ```
    curl --request GET \
      --url 'http://localhost:3000/find_leagues?latitude=1.0&longitude=1.0&radius=25&total_budget=8000'
  ```
