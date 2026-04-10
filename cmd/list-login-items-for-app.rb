# typed: strict
# frozen_string_literal: true

require "abstract_command"
require "open3"

module Homebrew
  module Cmd
    class ListLoginItemsForAppCmd < AbstractCommand
      cmd_args do
        usage_banner <<~EOS
          `list-login-items-for-app` <path.app>

          Given an Application (app) bundle directory on disk, find all
          login items associated with that app, which you can use in a
          Cask uninstall stanza, eg

              uninstall login_item: "login item name"

          Note that you will likely need to have opened the app at least
          once for any login items to be present.

          See CONTRIBUTING.md for more information.
        EOS

        named_args :app_path, max: 1

        hide_from_man_page!
      end

      sig { override.returns(T.nilable(String)) }
      def run
        out, err, status = Open3.capture3(
          "/usr/bin/osascript", "-e",
          "tell application \"System Events\" to get the name of every login item " \
          "whose path contains \"#{File.basename(*args.named)}\""
        )
        unless status.success?
          $stderr.puts err
          exit status.exitstatus.to_i
        end
        puts out.gsub(", ", "\n")
      end
    end
  end
end
