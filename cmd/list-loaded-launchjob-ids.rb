# typed: strict
# frozen_string_literal: true

require "abstract_command"
require "open3"

module Homebrew
  module Cmd
    class ListLoadedLaunchjobIdsCmd < AbstractCommand
      cmd_args do
        usage_banner <<~EOS
          `list-loaded-launchjob-ids`

          List IDs for currently loaded launchd jobs. Job IDs attributed to Apple are excluded from the output.
        EOS

        named_args :none

        hide_from_man_page!
      end

      sig { override.returns(T.nilable(String)) }
      def run
        prompt = "The system password is required to see all launchd jobs: "
        command = "/bin/launchctl list"
        running, = Open3.capture3("/usr/bin/sudo -p '#{prompt}' -- #{command} && #{command}")

        exclude = /^Label$|^com\.apple\.|\.[0-9]+$/
        puts running
          .lines
          .map { it.split(/\s+/).last }
          .reject { exclude.match(it) }
          .sort
      end
    end
  end
end
