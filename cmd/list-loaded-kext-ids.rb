# typed: strict
# frozen_string_literal: true

require "abstract_command"
require "open3"

module Homebrew
  module Cmd
    class ListLoadedKextIdsCmd < AbstractCommand
      cmd_args do
        usage_banner <<~EOS
          `list-loaded-kext-ids`

          List Bundle IDs for currently loaded kernel extensions (kexts). Useful to
          identify kexts installed by packages. Kexts attributed to Apple are excluded
          from the output.
        EOS

        named_args :none

        hide_from_man_page!
      end

      sig { override.returns(T.nilable(String)) }
      def run
        loaded, = Open3.capture3("/usr/sbin/kextstat", "-no-kernel", "-list-only")
        puts loaded
          .lines
          .filter_map { it.split[5] }
          .reject { it.start_with?("com.apple.") }
      end
    end
  end
end
