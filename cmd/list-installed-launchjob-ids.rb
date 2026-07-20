# typed: strict
# frozen_string_literal: true

require "abstract_command"
require "open3"

module Homebrew
  module Cmd
    class ListInstalledLaunchjobIdsCmd < AbstractCommand
      cmd_args do
        description <<~EOS
          List all installed launchjob IDs, which may be useful
          in a Cask uninstall stanza, e.g.:

              uninstall launchctl: "job.id.goes.here"

          Launchctl jobs attributed to Apple will be omitted.

          If a launchctl job is currently loaded, and visible to the current
          user, it will be followed by a plus symbol '(+)' in the output.
          This can be verified via the command:

              /bin/launchctl list 'job.id.goes.here'

          See CONTRIBUTING.md and 'man launchctl' for more information.
        EOS

        named_args :none

        hide_from_man_page!
      end

      sig { override.returns(T.nilable(String)) }
      def run
        loaded = list_loaded_launchjob_ids
        pattern = "{#{Dir.home},}/Library/Launch{Agents,Daemons}/**.plist"
        puts Pathname
          .glob(pattern)
          .filter(&:readable?)
          .filter_map { method(:read_label).call(it) }
          .reject { it.start_with? "com.apple." }
          .uniq.sort
          .map { loaded.include?(it) ? "#{it} (+)" : it }
      end

      sig { params(plist: Pathname).returns(T.nilable(String)) }
      def read_label(plist)
        xml = plist.read
        if xml.start_with? "bplist"
          xml, _, status = Open3.capture3("/usr/bin/plutil -convert xml1 -o - '#{plist}'")
          return unless status.success?
        end
        Plist.parse_xml(xml, marshal: false)["Label"]
      end

      sig { returns(T::Array[T.nilable(String)]) }
      def list_loaded_launchjob_ids
        loaded, = Open3.capture3("/bin/launchctl list")
        loaded.lines.map { it.split(/\s+/).last }
      end
    end
  end
end
