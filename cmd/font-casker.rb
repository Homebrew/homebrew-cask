# frozen_string_literal: true

require "abstract_command"
require "open3"
require "digest"

module Homebrew
  module Cmd
    class FontCaskerCmd < AbstractCommand
      cmd_args do
        Homebrew::CLI::Parser.new do
          usage_banner <<~EOS
            `font-casker` <archive_path>

            Generates cask stanzas from OTF/TTF files within <archive_path>.
          EOS

          named_args :archive_path, min: 1, max: 1

          hide_from_man_page!
        end
      end

      FONT_EXT_PATTERN = /.(otf|ttf)\Z/i

      FONT_WEIGHTS = [
        /black/i,
        /bold/i,
        /book/i,
        /hairline/i,
        /heavy/i,
        /light/i,
        /medium/i,
        /normal/i,
        /regular/i,
        /roman/i,
        /thin/i,
        /ultra/i,
      ].freeze

      FONT_STYLES = [
        /italic/i,
        /oblique/i,
        /roman/i,
        /slanted/i,
        /upright/i,
      ].freeze

      FONT_WIDTHS = [
        /compressed/i,
        /condensed/i,
        /extended/i,
        /narrow/i,
        /wide/i,
      ].freeze

      def mce(enum)
        enum.group_by(&:itself).values.max_by(&:size).first
      end

      def eval_bin_cmd(cmd, blob)
        IO.popen(cmd, "r+b") do |io|
          io.print(blob)
          io.close_write
          io.read
        end
      end

      def font_paths(archive)
        cmd = ["zipinfo", "-1", archive]

        IO.popen(cmd, "r", &:read)
          .chomp.split("\n")
          .grep(FONT_EXT_PATTERN)
          .reject { |x| x.start_with?("__MACOSX") }
          .grep_v(%r{(?:\A|/)\._})
          .sort
      end

      def font_blobs(archive, paths)
        paths.map { |x| IO.popen(["unzip", "-p", archive, x], "rb", &:read) }
      end

      def stanzify(stanza_name, val = "")
        if val.respond_to?(:map)
          val.map { |x| "  #{stanza_name} \"#{x}\"" }.join("\n")
        else
          "  #{stanza_name} \"#{val}\""
        end
      end

      def caskify(family, version, sha, paths)
        output = ["FAMILY: #{family}"]
        output << ""
        output << "cask 'FIXME' do"
        output << stanzify("version", version)
        output << stanzify("sha256", sha)
        output << ""
        output << stanzify("url", "")
        output << stanzify("name", "")
        output << stanzify("homepage", "")
        output << ""
        output << stanzify("font", paths)
        output << ""
        output << "  # No zap stanza required"
        output << "end"
        output.join("\n")
      end

      def shasum(archive)
        Digest::SHA256.file(archive)
      end

      def font_version(fontblobs)
        cmd = ["otfinfo", "-v"]
        versions = fontblobs.map { |x| eval_bin_cmd(cmd, x) }
                            .map { |x| (m = /\A(?:Version\s+)?(\d[^\s,;]*)/i.match(x)) ? m[1] : x.delete("\n") }
        mce(versions)
      end

      def font_family(fontblobs)
        cmd = ["otfinfo", "-a"]
        families = fontblobs.map { |x| eval_bin_cmd(cmd, x) }
                            .map { |x| x.delete("\n") }
        mce(families)
      end

      def run
        archive_path = args.named.first

        paths = font_paths(archive_path)
        blobs = font_blobs(archive_path, paths)

        puts caskify(
          font_family(blobs),
          font_version(blobs),
          shasum(archive_path),
          paths,
        )
      end
    end
  end
end
