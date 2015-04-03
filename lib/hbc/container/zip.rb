class Hbc::Container::Zip < Hbc::Container::Base
  def self.me?(criteria)
    criteria.file.include? 'compressed-encoding=application/zip;'
  end

  def extract
    debug_args = []
    debug_args << '--debug' if Hbc.verbose

    @command.run!('/usr/bin/ditto',
      :args => debug_args + ['-xk', '--', @path, @cask.staged_path])
  end
end
