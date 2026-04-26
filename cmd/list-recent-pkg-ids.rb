# typed: strict
# frozen_string_literal: true

require "abstract_command"
require "open3"

module Homebrew
  module Cmd
    class ListRecentPkgIdsCmd < AbstractCommand
      cmd_args do
        usage_banner <<~EOS
          `list-recent-pkg-ids` -- [<number>]

          List pkg receipt IDs for the <number> of most recently installed packages,
          10 by default. Provide a negative <number> to sort by least recent.
          Package IDs attributed to Apple are excluded from the output.
        EOS

        named_args :number, max: 1

        hide_from_man_page!
      end

      sig { override.returns(T.nilable(String)) }
      def run
        n = args.named.first&.to_i || 10
        method = n.positive? ? :reverse : :itself
        ext = ".plist"
        puts Pathname
          .glob("/var/db/receipts/*#{ext}")
          .sort_by(&:mtime)
          .send(method)
          .map { it.basename ext }
          .reject { it.to_s.start_with? "com.apple." }
          .first(n.abs)
      end
    end
  end
end
