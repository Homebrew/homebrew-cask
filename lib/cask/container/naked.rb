class Cask::Container::Naked < Cask::Container::Base
  def self.me?(criteria)
    %w[
      .pkg
    ].include?(criteria.path.extname)
  end

  def extract
    @command.run('ditto', :args => [@path, @cask.destination_path.join(target_file)])
  end

  def target_file
    URI.decode(File.basename(@cask.url.path))
  end
end

