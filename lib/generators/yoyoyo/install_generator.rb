require 'rails/generators/base'

module Yoyoyo
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      desc "Creates a Storytime initializer for your application."

      # def copy_initializer
      #   template "storytime.rb", "config/initializers/storytime.rb"
      # end

      def add_storytime_routes
        storytime_routes = 'mount Yoyoyo::Engine => "/"'

        route storytime_routes
      end

      # def show_readme
      #   readme "README" if behavior == :invoke
      # end

      def copy_migrations
        template "db/migrate/20150309093349_create_posts.rb", "db/migrate/20150309093349_create_posts.rb"
      end
    end
  end
end