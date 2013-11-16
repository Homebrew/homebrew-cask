class Cask::Source::Tap
  def self.me?(query)
    true # this is the fallback source
  end

  attr_reader :title

  def initialize(title)
    @title = title
  end

  def load
    if title.include?('/')
      cask_with_tap = title
    else
      cask_with_tap = Cask.all_titles.find { |t| t.split('/').last == title }
    end

    if cask_with_tap
      tap, cask = cask_with_tap.split('/')
      source = Cask.tapspath.join(tap, 'Casks', "#{cask}.rb")
    else
      source = Cask.tapspath.join(Cask.default_tap, 'Casks', "#{title}.rb")
    end
    raise CaskUnavailableError, title unless source.exist?
    Cask::Source::Path.new(source).load
  end
end
