class Cask::Source::Tapped
  def self.me?(query)
    path_for_query(query).exist?
  end

  def self.path_for_query(query)
    # Repeating Cask.all_titles is very slow for operations such as
    # brew cask list, but memoizing the value might cause breakage
    # elsewhere, given that installation and tap status is permitted
    # to change during the course of an invocation.
    cask_with_tap = Cask.all_titles.find { |t| t.split('/').last == query.sub(/\.rb$/i,'') }
    if cask_with_tap
      user, repo, cask = cask_with_tap.split('/')
      Cask.tapspath.join(user, repo, 'Casks', "#{cask}.rb")
    else
      Cask.tapspath.join(Cask.default_tap, 'Casks', "#{query.sub(/\.rb$/i,'')}.rb")
    end
  end

  attr_reader :title

  def initialize(title)
    @title = title
  end

  def load
    path = self.class.path_for_query(title)
    Cask::Source::PathSlashOptional.new(path).load
  end

  def to_s
    # stringify to fully-resolved location
    self.class.path_for_query(title).expand_path.to_s
  end
end
