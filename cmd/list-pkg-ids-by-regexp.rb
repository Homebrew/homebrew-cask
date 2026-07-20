# typed: strict
# frozen_string_literal: true

require "abstract_command"
require "open3"

module Homebrew
  module Cmd
    class ListPkgIdsByRegexpCmd < AbstractCommand
      cmd_args do
        description <<~EOS
          Print pkg receipt IDs for installed packages matching a regular
          expression, which may be useful in a Cask uninstall stanza, eg

              uninstall pkgutil: "pkg.regexp.goes.here"

          For more information, see

              https://docs.brew.sh/Cask-Cookbook#stanza-uninstall
        EOS

        named_args :regexp, number: 1

        hide_from_man_page!
      end

      sig { override.returns(T.nilable(String)) }
      def run
        pattern, = args.named
        analyze_regexp pattern if pattern
        pkgs, = Open3.capture3("/usr/sbin/pkgutil --pkgs='#{pattern}'")
        raise "No match. Suggestion: try '#{pattern}.*'" if pkgs.empty?

        puts pkgs
      end

      sig { params(pattern: String).returns(T.nilable(String)) }
      def analyze_regexp(pattern)
        prefix = "Note: pkgutil regular expressions are implicitly anchored with"
        warn "#{prefix} '^' at the start" if pattern.start_with? "^"
        warn "#{prefix} '$' at the end"   if pattern.end_with? "$"
      end
    end
  end
end
