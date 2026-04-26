# typed: strict
# frozen_string_literal: true

require "abstract_command"
require "open3"

module Homebrew
  module Cmd
    class ListUrlAttributesOnFileCmd < AbstractCommand
      cmd_args do
        usage_banner <<~EOS
          `list-url-attributes-on-file` <file>

          Given a downloaded file, extract possible sources from macOS extended
          attributes, which may be useful in a Cask url stanza.

          Currently the only attribute examined is

              com.apple.metadata:kMDItemWhereFroms

          This attribute will typically be set if the file was downloaded via a
          browser, but not if the file was downloaded by a CLI utility such as
          curl.

          See CONTRIBUTING.md for more information.
        EOS

        named_args :file, number: 1

        hide_from_man_page!
      end

      sig { override.returns(T.nilable(String)) }
      def run
        attribute = "com.apple.metadata:kMDItemWhereFroms"
        xattr, _, status = Open3.capture3("/usr/bin/xattr -p #{attribute} #{args.named.first}")

        exit status.exitstatus.to_i unless status.success?

        puts Plist.parse_xml(xattr, marshal: false) || xattr
      end
    end
  end
end
