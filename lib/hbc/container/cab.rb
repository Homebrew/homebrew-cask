require "tmpdir"

require "hbc/container/base"

class Hbc::Container::Cab < Hbc::Container::Base
  def self.me?(criteria)
    cabextract = Hbc.homebrew_prefix.join("bin", "cabextract")

    criteria.magic_number(%r{^MSCF}n) &&
      cabextract.exist? &&
      criteria.command.run(cabextract, args: ["-t", "--", criteria.path.to_s]).stderr.empty?
  end

  def extract
    cabextract = Hbc.homebrew_prefix.join("bin", "cabextract")

    unless cabextract.exist?
      raise Hbc::CaskError, "Expected to find cabextract executable. Cask '#{@cask}' must add: depends_on formula: 'cabextract'"
    end

    Dir.mktmpdir do |unpack_dir|
      @command.run!(cabextract, args: ["-d", unpack_dir, "--", @path])
      @command.run!("/usr/bin/ditto", args: ["--", unpack_dir, @cask.staged_path])
    end
  end
end
