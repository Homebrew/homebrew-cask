# typed: strict
# frozen_string_literal: true

require "abstract_command"
require "json"
require "open-uri"
require "tmpdir"

module Homebrew
  module Cmd
    class CaskPrLocalCheckCmd < AbstractCommand
      cmd_args do
        usage_banner <<~EOS
          Run `brew` `audit` and `style` checks locally, from a pull request URL.
          Useful when online CI is broken.

          Usage:
            #{File.basename($PROGRAM_NAME)} <pr url>

          Options:
        EOS

        named_args :pr_url, min: 1, max: 1

        hide_from_man_page!
      end

      sig { override.void }
      def run
        pr_url = args.named.first

        unless %r{^https://github.com/Homebrew/homebrew-cask.*}.match?(pr_url)
          abort "URL is not from an official Homebrew Cask tap"
        end

        check_pr_locally(pr_url)
      end

      private

      sig { params(pr_url: String).void }
      def check_pr_locally(pr_url)
        pr_api = pr_url.sub(%r{^https://github.com/([^/]+)/([^/]+)/pull/([^/]+).*},
                            'https://api.github.com/repos/\1/\2/pulls/\3/files')

        pr_json = JSON.parse(URI(pr_api).read)

        abort "PR needs to have a single file" if pr_json.count != 1

        file_raw_url = pr_json[0]["raw_url"].gsub("%2F", "/")
        file_name = File.basename(file_raw_url)
        local_file = File.join(Dir.mktmpdir, file_name)

        File.write(local_file, URI(file_raw_url).read)
        abort "Audit failed" unless system("brew", "audit", "--new", local_file)
        abort "Style check failed" unless system("brew", "style", local_file)
      end
    end
  end
end
