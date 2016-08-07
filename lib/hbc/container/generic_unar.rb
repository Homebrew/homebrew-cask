require "tmpdir"

require "hbc/container/base"

class Hbc::Container::GenericUnar < Hbc::Container::Base
  def self.me?(criteria)
    lsar = Hbc.homebrew_prefix.join("bin", "lsar")
    lsar.exist? &&
      criteria.command.run(lsar,
                           args:         ["-l", "-t", "--", criteria.path],
                           print_stderr: false).stdout.chomp.end_with?("passed, 0 failed.")
  end

  def extract
    unar = Hbc.homebrew_prefix.join("bin", "unar")

    unless unar.exist?
      raise Hbc::CaskError, "Expected to find unar executable. Cask #{@cask} must add: depends_on formula: 'unar'"
    end

    Dir.mktmpdir do |unpack_dir|
      @command.run!(unar, args: ["-force-overwrite", "-quiet", "-no-directory", "-output-directory", unpack_dir, "--", @path])
      @command.run!("/usr/bin/ditto", args: ["--", unpack_dir, @cask.staged_path])
    end
  end
end
