require "tmpdir"

require "hbc/container/base"

class Hbc::Container::Xar < Hbc::Container::Base
  def self.me?(criteria)
    criteria.magic_number(%r{^xar!}n)
  end

  def extract
    Dir.mktmpdir do |unpack_dir|
      @command.run!("/usr/bin/xar", args: ["-x", "-f", @path, "-C", unpack_dir])
      @command.run!("/usr/bin/ditto", args: ["--", unpack_dir, @cask.staged_path])
    end
  end
end
