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
## Setup Bootstrap jquery select2
```bash
yarn add bootstrap jquery @popperjs/core select2
```
**Update app/assets/stylesheets/application.sass.scss**
```scss
@import "bootstrap/dist/css/bootstrap";
@import "select2/dist/css/select2";
```
**Update app/javascript/application.js to add jquery and select2**
```js
// Setup jquery
import jquery from 'jquery';
window.jQuery = jquery;
window.$ = jquery;

import Select2 from "select2"
window.Select2 = Select2
Select2()

// load select2
document.addEventListener('turbo:load', () => {
  // apply to all elements that have class .select2
  $('.select2').select2()
})
```

## Run App
```bash
./bin/dev
```

## Create Address model, controller, view (scaffold)
```bash
rails g scaffold Address town:text phone:string
```

## Setup Devise for User
```bash
bundle add devise
rails generate devise:install
rails g devise:views

rails generate devise User
rails db:migrate
```
**Update config/environments/development.rb**
```rb
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
```
**Add first_name, lasname, is_admin for User**
```bash
bin/rails generate migration AddIsAdminToUsers is_admin:boolean first_name:text last_name:text
```
**Update app/views/layouts/application.html.erb**
```html
<div class="container">
  <% if notice.present? %>
    <div class="alert alert-primary mt-4" role="alert">
      <%= notice %>
    </div>
  <% end %>

  <% if alert.present? %>
    <div class="alert alert-danger mt-4" role="alert">
      <%= alert %>
    </div>
  <% end %>

  <%= yield %>
</div>
```

## Setup Active Storage
```bash
bin/rails active_storage:install
bin/rails db:migrate
```

## Setup Action Text
```bash
bin/rails action_text:install
bin/rails db:migrate
```

## Create pages home and about
```bash
rails g controller pages home about
```
**Update routes**
```rb
root "pages#home"
get "/about" => "pages#about", as: :pages_about
```

## Create Category model, controller, view (scaffold)
```bash
rails g scaffold Category name description:text
```

## Create Product model, controller, view (scaffold)
```bash
rails g scaffold Product title active:boolean quantity:integer price:integer category:references
```

