class Hbc::Container::Naked < Hbc::Container::Base
  def self.me?(criteria)
    # Either inherit from this class and override self.me?,
    # or use this class directly as "container :type => :naked",
    # in which case self.me? is not called.
    false
  end

  def extract
    debug_args = []
    debug_args << '--debug' if Hbc.verbose

    @command.run!('/usr/bin/ditto',
      :args => debug_args + ['--', @path, @cask.staged_path.join(target_file)])
  end

  def target_file
    URI.decode(File.basename(@cask.url.path))
  end
end
