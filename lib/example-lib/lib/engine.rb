# frozen_string_literal: true

# require_relative lib files related to your engine here
require_relative './example-mixin'

module ExampleLib
	class Engine < ::Rails::Engine
		isolate_namespace ExampleLib

		# Autoload files here so they hot-reload in dev
		config.autoload_paths << File.expand_path('./example-mixin.rb', __dir__) if Rails.env.development?

		initializer 'example-lib.load' do
			# Run initializer code that should run once per app start here
			# E.g,
			# - loading custom rails template handlers
			# - loading configuation for this sub-app
		end
	end
end
