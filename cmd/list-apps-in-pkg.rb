# typed: strict
# frozen_string_literal: true

require "abstract_command"
require "open3"
require "rexml/document"

module Homebrew
  module Cmd
    class ListAppsInPkgCmd < AbstractCommand
      cmd_args do
        usage_banner <<~EOS
          `list-apps-in-pkg` [`--lax`] <file.pkg>

          Given a package file, extract a list of candidate App names from
          inside the pkg, which may be useful for naming a Cask.

          The given package file need not be installed.

          If an App of the listed name is already installed in /Applications
          or ~/Applications, it will be followed by a plus symbol '(+)' in
          the output. This can be verified via 'ls' or the Finder.

          Bugs: This script is imperfect.
          - It does not fully parse PackageInfo files
          - An App can be hidden within a nested archive and not found
          - Some pkg files simply don't contain any Apps

          See CONTRIBUTING.md and 'man pkgutil' for more information.
        EOS

        switch "-l", "--lax",
               description: "Be less selective in looking for App names.
                             Generate more, but less accurate, guesses."

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
        info = pkgdir.glob("**/{PackageInfo,Archive.pax.gz}")
        app_sources = info.flat_map do
          if it.extname == ".pax.gz"
            next [] unless T.unsafe(args).lax?

            pax, = Open3.capture3("/usr/bin/gunzip -c '#{it}' | /bin/pax")
            pax.lines.filter_map { File.basename(it) if it.strip.end_with? ".app" }
          else
            xml = REXML::Document.new(it.read)
            attributes = "install-location", "path"
            REXML::XPath
              .match(xml.root, ". | ./bundle")
              .map(&:attributes)
              .reduce(&:merge)
              .values_at(*attributes)
              .filter_map do
                path = Pathname it.value
                next if path.extname.blank?

                path.basename if path.extname != ".app" || T.unsafe(args).lax?
              end
          end
        end
        puts app_sources.uniq.sort.map {
          installed = appdir.glob "{,~}#{appdir}/{,*}/#{it}"
          installed.any? ? "#{it} (+)" : it.to_s
        }
      end

      sig { returns(Pathname) }
      def appdir = Pathname Cask::Config.defaults[:appdir].to_s
    end
  end
end
