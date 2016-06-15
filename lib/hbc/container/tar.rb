require 'tmpdir'

class Hbc::Container::Tar < Hbc::Container::Base
  def self.me?(criteria)
    criteria.file.include?('application/x-tar') ||
      IO.popen(['/usr/bin/tar', '-tf', criteria.path.to_s], err: open('/dev/null').fileno) { |io| !io.read(1).nil? }
  end

  def extract
    Dir.mktmpdir do |unpack_dir|
      @command.run!('/usr/bin/tar', :args => ['xf', @path, '-C', unpack_dir])
      @command.run!('/usr/bin/ditto', :args => ['--', unpack_dir, @cask.staged_path])
    end
  end
end
