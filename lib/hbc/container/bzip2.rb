require "tmpdir"

require "hbc/container/base"

class Hbc::Container::Bzip2 < Hbc::Container::Base
  def self.me?(criteria)
    criteria.magic_number(%r{^BZh}n)
  end

  def extract
    Dir.mktmpdir do |unpack_dir|
      @command.run!("/usr/bin/ditto",   args: ["--", @path, unpack_dir])
      @command.run!("/usr/bin/bunzip2", args: ["--quiet", "--", Pathname.new(unpack_dir).join(@path.basename)])

      src = Pathname.new(unpack_dir).children[0]

      unless @cask.artifacts[:nested_container].empty? &&
             extract_nested(src)
        dest = @cask.staged_path.join(src.relative_path_from(Pathname.new(unpack_dir)))
        FileUtils.mv(src, dest, force: true)
      end
    end
  end
end
