require "tmpdir"

class Hbc::Container::Gzip < Hbc::Container::Base
  def self.me?(criteria)
    criteria.magic_number(%r{^\037\213}n)
  end

  def extract
    Dir.mktmpdir do |unpack_dir|
      @command.run!("/usr/bin/ditto",  args: ["--", @path, unpack_dir])
      @command.run!("/usr/bin/gunzip", args: ["-q", "--", Pathname(unpack_dir).join(@path.basename)])
      @command.run!("/usr/bin/ditto",  args: ["--", unpack_dir, @cask.staged_path])
    end
  end
end
