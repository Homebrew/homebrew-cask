require "hbc/container/base"

class Hbc::Container::Zip < Hbc::Container::Base
  def self.me?(criteria)
    criteria.magic_number(%r{^PK(\003\004|\005\006)}n)
  end

  def extract
    Dir.mktmpdir do |unpack_dir|
      @command.run!("/usr/bin/ditto", args: ["-x", "-k", "--", @path, unpack_dir])

      children = Pathname.new(unpack_dir).children

      nested_container = children[0]

      unless children.count == 1 &&
             !nested_container.directory? &&
             @cask.artifacts[:nested_container].empty? &&
             extract_nested(nested_container)
        children.each do |src|
          dest = @cask.staged_path.join(src.relative_path_from(Pathname.new(unpack_dir)))
          FileUtils.rm_r(dest) if dest.exist?
          FileUtils.mv(src, dest, force: true)
        end
      end
    end
  end
end
