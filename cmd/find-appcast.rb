# frozen_string_literal: true

require "abstract_command"
require "formula"
require "open3"
require "pathname"
require "yaml"
require "net/http"
require "uri"

module Homebrew
  module Cmd
    class FindAppcastCmd < AbstractCommand
      cmd_args do
        Homebrew::CLI::Parser.new do
          usage_banner <<~EOS
            `find-appcast` <app_path>

            Finds the appcast for a given app when a path is provided to the .app bundle.
          EOS

          named_args :app_path, min: 1

          hide_from_man_page!
        end
      end

      def run
        app = Pathname.new(args.named.first)
        find_sparkle(app) || find_electron_builder(app)
      end

      def verify_appcast(appcast_type, *urls)
        print "Looking for #{appcast_type} appcast… "
        urls.each do |url|
          next unless url_exist?(url)

          puts "Found!"
          puts "  #{url}"
          return true
        end
        puts "Not found."
        false
      end

      def url_exist?(url)
        return false unless url

        system("curl", "--silent", "--location", "--fail", url, out: File::NULL)
      end

      def find_sparkle(app)
        plist = app.join("Contents/Info.plist")
        url = Open3.capture3("defaults", "read", plist.to_path, "SUFeedURL").first.strip
        verify_appcast("Sparkle", url)
      end

      def find_electron_builder(app)
        appcast_file = app.join("Contents/Resources/app-update.yml")
        unless appcast_file.exist?
          verify_appcast("electron-builder", false)
          return false
        end
        YAML.load_file(appcast_file)
      end
    end
  end
end
