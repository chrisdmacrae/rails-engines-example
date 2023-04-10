# Example Engine

This is an example of loading a custom [Rails engine](https://guides.rubyonrails.org/engines.html) into a Rails app.

## Usage

This engine is loaded into the Rails app via the app's Gemfile as a local Gem.

Some notes about engines:

- The lib/engine.rb file is autoloaded by Rails _once_
  - The engine can specify lib files that are autoloaded by Rails to get hot-reloading 
- The app folder is autoloaded by Rails everytime it changes
- An engine is like an entire Rails app:
  - It can load models, controllers, etc
  - Anything in the lib folder can be relatively required to initialize a Rails app with specific functionality, such as:
    - Middleware
    - Routes
      - E.g, think of mount Sidekiq::Engine => 'sidekiq'; this is simply a Rails app in a Rails app
    - Rake tasks
      - E.g., an install rake task that sets up the engine in the app
    - Templates (for rails g)