# typed: strict
# frozen_string_literal: true

require "English"
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

      sig { override.void }
      def run
        app = Pathname.new(args.named.first)
        find_sparkle(app) || find_electron_builder(app)
      end

      sig { params(appcast_type: String, urls: T.any(String, T::Array[String])).returns(T::Boolean) }
      def verify_appcast(appcast_type, *urls)
        print "Looking for #{appcast_type} appcast: "
        urls.flatten.each do |url|
          next unless url_exist?(url)

          puts "Found appcast! \n"
          livecheck_strategy = if appcast_type == "Sparkle"
            ":sparkle"
          elsif appcast_type == "Electron Builder"
            ":electron_builder"
          end
          puts <<~EOS
            livecheck do
              url "#{url}"
              strategy #{livecheck_strategy}
            end
          EOS
          return true
        end
        puts "Not found."
        false
      end

      sig { params(url: String).returns(T.nilable(T::Boolean)) }
      def url_exist?(url)
        system("curl", "--silent", "--location", "--fail", url, out: File::NULL)
        $CHILD_STATUS.exitstatus.zero?
      end

      sig { params(app: Pathname).returns(T::Boolean) }
      def find_sparkle(app)
        plist = app.join("Contents/Info.plist")
        url = Open3.capture3("defaults", "read", plist.to_path, "SUFeedURL").first.strip
        return false if url.empty?

        verify_appcast("Sparkle", url)
      end

      sig { params(app: Pathname).returns(T::Boolean) }
      def find_electron_builder(app)
        appcast_file = app.join("Contents/Resources/app-update.yml")
        return false unless appcast_file.exist?

        data = YAML.load_file(appcast_file)
        components = {
          url:      data["url"],
          owner:    data["owner"],
          repo:     data["repo"],
          bucket:   data["bucket"],
          channel:  data["channel"],
          path:     data["path"],
          region:   data["region"],
          name:     data["name"],
          endpoint: data["endpoint"],
        }.compact

        possible_appcasts = [
          "#{components[:url]}/latest-mac.yml",
          "#{components[:url]}/updates/latest/mac/latest-mac.yml",
          "https://github.com/#{components[:owner]}/#{components[:repo]}/releases.atom",
          "https://#{components[:bucket]}.s3.amazon-aws.yml/#{components[:channel]}/latest-mac.yml",
          "https://#{components[:bucket]}.s3.amazonaws.com/latest-mac.yml",
          "https://#{components[:bucket]}.s3.amazonaws.com/#{components[:path]}/latest-mac.yml",
          "https://s3-#{components[:region]}.amazonaws.com/#{components[:bucket]}/#{components[:path]}/latest-mac.yml",
          "https://s3.amazonaws.com/#{components[:bucket]}/#{components[:path]}/latest-mac.yml",
          "https://#{components[:name]}.#{components[:region]}.digitaloceanspaces.com/latest-mac.yml",
          "https://#{components[:name]}.#{components[:region]}.digitaloceanspaces.com/#{components[:path]}/latest-mac.yml",
          "#{components[:endpoint]}/#{components[:bucket]}/#{components[:path]}/latest-mac.yml",
        ].select do |url|
          url.exclude?("///") && url.exclude?("//.")
        end
        if possible_appcasts.empty?
          false
        else
          verify_appcast("Electron Builder", *possible_appcasts)
        end
      end
    end
  end
end
