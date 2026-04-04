# typed: strict
# frozen_string_literal: true

require "abstract_command"
require "open3"

module Homebrew
  module Cmd
    class ListRunningAppIdsCmd < AbstractCommand
      cmd_args do
        usage_banner <<~EOS
          `list-running-app-ids` [--test=<bundle-id>]

          Print a list of currently running Applications and associated
          Bundle IDs, which may be useful in a Cask uninstall stanza, eg

              uninstall quit: 'bundle.id.goes.here'

          Applications attributed to Apple are excluded from the output.

          With optional `--test`, silently test if a given app
          is running, setting a failing exit code if not.

          See CONTRIBUTING.md for more information.
        EOS

        flag "--test=",
             description: "Silently test if the specified <bundle-id> is running."

        hide_from_man_page!
      end

      sig { override.void }
      def run
        app_names, bundle_ids = load_apps

        if args.test.present?
          Homebrew.failed = true unless bundle_ids.include?(args.test)
        else
          report_apps(app_names, bundle_ids)
        end
      end

      private

      sig { returns([T::Array[String], T::Array[String]]) }
      def load_apps
        out, err, status =
          Open3.capture3("/usr/bin/osascript", "-e",
                         'tell application "System Events" to get ' \
                         "(name, bundle identifier, unix id) of every process")
        odie(err) if status.exitstatus != 0

        parts = out.split(", ")
        one_third = parts.length / 3
        app_names  = T.must(parts.shift(one_third))
        bundle_ids = T.must(parts.shift(one_third))
        [app_names, bundle_ids]
      end

      sig { params(bundle_id: String).returns(T::Boolean) }
      def excluded_bundle_id?(bundle_id)
        bundle_id.start_with?("com.apple.")
      end

      sig { params(app_name: String).returns(T::Boolean) }
      def excluded_app_name?(app_name)
        app_name == "osascript"
      end

      sig { params(app_names: T::Array[String], bundle_ids: T::Array[String]).void }
      def report_apps(app_names, bundle_ids)
        col_width = Tty.width / 2
        running = Set.new

        app_names.zip(bundle_ids).each do |app_name, bundle_id|
          next if bundle_id.nil? || app_name.nil?
          next if excluded_bundle_id?(bundle_id)
          next if excluded_app_name?(app_name)

          display_id = bundle_id.gsub(/^(missing value)$/, '<\1>')
          running.add "#{display_id.ljust(col_width)}\t#{app_name}"
        end

        puts "#{"bundle_id".ljust(col_width)}\tapp_name"
        puts "-" * Tty.width
        puts running.to_a.sort.join("\n")
      end
    end
  end
end
