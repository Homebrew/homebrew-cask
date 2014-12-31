class Cask::Source::Tapped
  def self.me?(query)
    path_for_query(query).exist?
  end

  def self.path_for_query(query)
    # Repeating Cask.all_tokens is very slow for operations such as
    # brew cask list, but memoizing the value might cause breakage
    # elsewhere, given that installation and tap status is permitted
    # to change during the course of an invocation.
    token_with_tap = Cask.all_tokens.find { |t| t.split('/').last == query.sub(/\.rb$/i,'') }
    if token_with_tap
      user, repo, token = token_with_tap.split('/')
      Cask.tapspath.join(user, repo, 'Casks', "#{token}.rb")
    else
      Cask.tapspath.join(Cask.default_tap, 'Casks', "#{query.sub(/\.rb$/i,'')}.rb")
    end
  end

  attr_reader :token

  def initialize(token)
    @token = token
  end

  def load
    path = self.class.path_for_query(token)
    Cask::Source::PathSlashOptional.new(path).load
  end

  def to_s
    # stringify to fully-resolved location
    self.class.path_for_query(token).expand_path.to_s
  end
end
