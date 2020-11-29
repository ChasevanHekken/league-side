# league-side

1. Ran with "rails new league-side --api --database=postgresql"
2. DB connection info in config/database.yml
  ```
    database: league_side_development
    username: league_side
    password: test
  ```
3. ```rails db:drop db:create db:migrate db:seed```
4. Create league endpoint: 
  ```
    curl --request POST \
      --url http://localhost:3000/leagues \
      --header 'Content-Type: application/json' \
      --data '{
      "name": "insomnia",
      "latitude": 54.32,
      "longitude": 21.56,
      "purchase_price": 3500
    }'
  ```
5. Find leagues endpoint:
  ```
    curl --request GET \
      --url 'http://localhost:3000/find_leagues?latitude=21.21&longitude=73.91&radius=42&total_budget=38000'
  ```
