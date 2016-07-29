class Hbc::Container::Zip < Hbc::Container::Base
  def self.me?(criteria)
    criteria.magic_number(%r{^PK(\003\004|\005\006)}n)
  end

  def extract
    @command.run!("/usr/bin/ditto", args: ["-x", "-k", "--", @path, @cask.staged_path])
  end
end
