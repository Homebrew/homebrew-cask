require "tmpdir"

require "hbc/container/base"

class Hbc::Container::Gzip < Hbc::Container::Base
  def self.me?(criteria)
    criteria.magic_number(%r{^\037\213}n)
  end

  def extract
    Dir.mktmpdir do |unpack_dir|
      @command.run!("/usr/bin/ditto",  args: ["--", @path, unpack_dir])
      @command.run!("/usr/bin/gunzip", args: ["--quiet", "--", Pathname.new(unpack_dir).join(@path.basename)])

      extract_nested_inside(unpack_dir)
    end
  end
end
