require "tmpdir"

require "hbc/container/base"

class Hbc::Container::Xz < Hbc::Container::Base
  def self.me?(criteria)
    criteria.magic_number(%r{^\xFD7zXZ\x00}n)
  end

  def extract
    unxz = Hbc.homebrew_prefix.join("bin", "unxz")

    unless unxz.exist?
      raise Hbc::CaskError, "Expected to find unxz executable. Cask '#{@cask}' must add: depends_on formula: 'xz'"
    end

    Dir.mktmpdir do |unpack_dir|
      @command.run!("/usr/bin/ditto", args: ["--", @path, unpack_dir])
      @command.run!(unxz, args: ["-q", "--", Pathname(unpack_dir).join(@path.basename)])
      @command.run!("/usr/bin/ditto", args: ["--", unpack_dir, @cask.staged_path])
    end
  end
end
