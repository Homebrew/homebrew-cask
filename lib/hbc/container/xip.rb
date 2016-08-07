require "tmpdir"

class Hbc::Container::Xip < Hbc::Container::Base
  def self.me?(criteria)
    criteria.magic_number(%r{^xar!}n) &&
      IO.popen(["/usr/bin/xar", "-t", "-f", criteria.path.to_s], err: "/dev/null") { |io| io.read =~ %r{\AContent\nMetadata\n\Z} }
  end

  def extract
    Dir.mktmpdir do |unpack_dir|
      begin
        ohai "Verifying signature for #{@path.basename}"
        @command.run!("/usr/sbin/pkgutil", args: ["--check-signature", @path])
      rescue
        raise "Signature check failed."
      end

      @command.run!("/usr/bin/xar", args: ["-x", "-f", @path, "Content", "-C", unpack_dir])

      Dir.chdir(@cask.staged_path) do
        @command.run!("/usr/bin/cpio", args: ["--quiet", "-i", "-I", Pathname(unpack_dir).join("Content")])
      end
    end
  end
end
