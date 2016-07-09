require "tmpdir"

class Hbc::Container::GenericUnar < Hbc::Container::Base
  def self.me?(criteria)
    !criteria.lsar.nil? && criteria.lsar.include?("passed, 0 failed")
  end

  def extract
    unar = Hbc.homebrew_prefix.join("bin/unar")
    unless Pathname.new(unar).exist?
      raise Hbc::CaskError, "Expected to find unar executable. Cask #{@cask} must add: depends_on :formula => 'unar'"
    end
    Dir.mktmpdir do |unpack_dir|
      @command.run!(unar, args: ["-force-overwrite", "-quiet", "-no-directory", "-output-directory", unpack_dir, "--", @path])
      @command.run!("/usr/bin/ditto", args: ["--", unpack_dir, @cask.staged_path])
    end
  end
end
