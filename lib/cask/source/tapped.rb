class Cask::Source::Tapped
  def self.me?(query)
    path_for_query(query).exist?
  end

  def self.path_for_query(query)
    cask_with_tap = Cask.all_titles.find { |t| t.split('/').last == query }
    if cask_with_tap
      tap, cask = cask_with_tap.split('/')
      Cask.tapspath.join(tap, 'Casks', "#{cask}.rb")
    else
      Cask.tapspath.join(Cask.default_tap, 'Casks', "#{query}.rb")
    end
  end

  attr_reader :title

  def initialize(title)
    @title = title
  end

  def load
    path = self.class.path_for_query(title)
    Cask::Source::Path.new(path).load
  end
end
