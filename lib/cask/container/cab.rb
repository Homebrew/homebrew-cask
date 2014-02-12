require 'tmpdir'

class Cask::Container::Cab < Cask::Container::Base
  def self.me?(criteria)
    (criteria.file.include? 'application/octet-stream;' or
     criteria.file.include? 'application/vnd.ms-cab-compressed;') and
      ! criteria.cabextract.nil? and
        criteria.cabextract.include? 'All done, no errors'
  end

  def extract
    cabextract = HOMEBREW_PREFIX.join('bin/cabextract')
    if ! Pathname.new(cabextract).exist?
      raise "Expected to find cabextract executable. Cask #{@cask} must add 'depends_on_formula'"
    end
    Dir.mktmpdir do |staging_dir|
      @command.run!(cabextract, :args => ['-d', staging_dir, '--', @path])
      @command.run!('/usr/bin/ditto', :args => ['--', staging_dir, @cask.destination_path])
    end
  end
end
