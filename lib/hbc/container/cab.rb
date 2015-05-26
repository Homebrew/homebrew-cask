require 'tmpdir'

class Hbc::Container::Cab < Hbc::Container::Base
  def self.me?(criteria)
    (criteria.file.include? 'application/octet-stream;' or
     criteria.file.include? 'application/vnd.ms-cab-compressed;') and
      ! criteria.cabextract.nil? and
        criteria.cabextract.include? 'All done, no errors'
  end

  def extract
    cabextract = Hbc.homebrew_prefix.join('bin/cabextract')
    if ! Pathname.new(cabextract).exist?
      raise Hbc::CaskError.new "Expected to find cabextract executable. Cask '#{@cask}' must add: depends_on :formula => 'cabextract'"
    end
    Dir.mktmpdir do |unpack_dir|
      @command.run!(cabextract, :args => ['-d', unpack_dir, '--', @path])
      @command.run!('/usr/bin/ditto', :args => ['--', unpack_dir, @cask.staged_path])
    end
  end
end
