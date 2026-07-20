# typed: strict
# frozen_string_literal: true

require "abstract_command"
require "open3"
require "rexml/document"

module Homebrew
  module Cmd
    class ListIdsInPkgCmd < AbstractCommand
      cmd_args do
        usage_banner <<~EOS
          `list-ids-in-pkg` [`--lax`] <file.pkg>

          Given a package file, extract a list of candidate Package IDs
          which may be useful in a Cask uninstall stanza, eg

              uninstall pkgutil: "package.id.goes.here"

          The given package file need not be installed.

          The output of this script should be overly inclusive -- not
          every candidate package id in the output will be needed at
          uninstall time.

          Package IDs designated by Apple or common development frameworks
          will be excluded from the output. This can be turned off with
          the -lax argument.

          If a package id is already installed, it will be followed by
          a plus symbol '(+)' in the output. This can be verified via
          the command

              /usr/sbin/pkgutil --pkg-info "package.id.goes.here"

          See CONTRIBUTING.md and 'man pkgutil' for more information.
        EOS

        switch "-l", "--lax", description: <<~EOS
          Turn off filtering of Apple or common development
          framework package IDs from the output.
        EOS

        named_args :pkg, number: 1

        hide_from_man_page!
      end

      sig { override.returns(T.nilable(String)) }
      def run
        pkg = Pathname args.named.last || Dir.pwd
        raise ArgumentError, "No such pkg file: #{pkg}" unless pkg.exist?

        pkgdir = pkg if pkg.directory?
        mktemp = Mktemp.new("list-apps-in-pkg", retain_in_cache: true)
        mktemp.quiet!
        pkgdir ||= mktemp.run(chdir: false) do
          Open3.capture3("/usr/sbin/pkgutil --expand '#{pkg}' #{it.tmpdir}/unpack")
          Pathname "#{it.tmpdir}/unpack"
        end
        info = pkgdir.glob("**/{Package,}Info{.plist,}")

        bundle_ids = info.flat_map do
          if it.extname == ".plist"
            Plist.parse_xml(it)["CFBundleIdentifier"]
          else
            xml = REXML::Document.new(it.read)
            attributes = "id", "identifier"
            REXML::XPath
              .match(xml.root, ". | ./bundle")
              .map(&:attributes)
              .reduce(&:merge)
              .values_at(*attributes)
              .map(&:value)
          end
        end
        filter = T.unsafe(args).lax? ? :itself : :reject
        puts bundle_ids
          .uniq.sort
          .send(filter) { it.start_with?("com.apple.") || it.end_with?("sparkle.finish-installation") }
          .map {
            installed, = Open3.capture3("/usr/sbin/pkgutil --pkg-info #{it}")
            installed.present? ? "#{it} (+)" : it
          }
      end
    end
  end
end
