# Shop

## Create project
```bash
rails new Shop -c sass -j esbuild -d mysql
```

**Update database**
config/database.yml
```yml
default: &default
  adapter: mysql2
  encoding: utf8mb4
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  host: localhost
  port: 3306
  username: root
  password: Son@2023
  socket: /var/run/mysqld/mysqld.sock

development:
  <<: *default
  database: shop_basic_development

test:
  <<: *default
  database: shop_basic_test

```

## Create database
```bash
rails db:create
```