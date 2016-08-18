module Hbc::QualifiedToken
  REPO_PREFIX = "homebrew-".freeze

  # per https://github.com/Homebrew/homebrew/blob/4c7bc9ec3bca729c898ee347b6135ba692ee0274/Library/Homebrew/cmd/tap.rb#L121
  USER_REGEX = %r{[a-z_\-]+}

  # per https://github.com/Homebrew/homebrew/blob/4c7bc9ec3bca729c898ee347b6135ba692ee0274/Library/Homebrew/cmd/tap.rb#L121
  REPO_REGEX = %r{(?:#{REPO_PREFIX})?\w+}

  # per https://github.com/caskroom/homebrew-cask/blob/master/CONTRIBUTING.md#generating-a-token-for-the-cask
  TOKEN_REGEX = %r{[a-z0-9\-]+}

  TAP_REGEX = %r{#{USER_REGEX}[/\-]#{REPO_REGEX}}

  QUALIFIED_TOKEN_REGEX ||= %r{#{TAP_REGEX}/#{TOKEN_REGEX}}

  def self.parse(arg)
    return nil unless arg.is_a?(String) && arg.downcase =~ %r{^#{QUALIFIED_TOKEN_REGEX}$}
    path_elements = arg.downcase.split("/")
    if path_elements.count == 2
      # eg phinze-cask/google-chrome.
      # Not certain this form is needed, but it was supported in the past.
      token = path_elements[1]
      dash_elements = path_elements[0].split("-")
      repo = dash_elements.pop
      dash_elements.pop if dash_elements.count > 1 && dash_elements[-1] + "-" == REPO_PREFIX
      user = dash_elements.join("-")
    else
      # eg caskroom/cask/google-chrome
      # per https://github.com/Homebrew/homebrew/wiki/brew-tap
      user, repo, token = path_elements
    end
    repo.sub!(%r{^#{REPO_PREFIX}}, "")
    odebug "[user, repo, token] might be [#{user}, #{repo}, #{token}]"
    [user, repo, token]
  end
end
