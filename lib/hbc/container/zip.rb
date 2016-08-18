require "hbc/container/base"

class Hbc::Container::Zip < Hbc::Container::Base
  def self.me?(criteria)
    criteria.magic_number(%r{^PK(\003\004|\005\006)}n)
  end

  def extract
    Dir.mktmpdir do |unpack_dir|
      @command.run!("/usr/bin/ditto", args: ["-x", "-k", "--", @path, unpack_dir])

      extract_nested_inside(unpack_dir)
    end
  end
end
