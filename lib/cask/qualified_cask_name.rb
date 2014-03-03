module Cask::QualifiedCaskName
  def self.repo_prefix
    'homebrew-'
  end

  def self.user_regexp
    # per https://github.com/Homebrew/homebrew/blob/4c7bc9ec3bca729c898ee347b6135ba692ee0274/Library/Homebrew/cmd/tap.rb#L121
    %r{[a-z_\-]+}
  end

  def self.repo_regexp
    # per https://github.com/Homebrew/homebrew/blob/4c7bc9ec3bca729c898ee347b6135ba692ee0274/Library/Homebrew/cmd/tap.rb#L121
    %r{(?:#{repo_prefix})?\w+}
  end

  def self.cask_regexp
    # per https://github.com/phinze/homebrew-cask/blob/04a8fa88c7b1d05adcd8307b9297e36f83ddbf5d/CONTRIBUTING.md#cask-name
    %r{[a-z0-9\-]+}
  end

  def self.tap_regexp
    %r{#{user_regexp}[/\-]#{repo_regexp}}
  end

  def self.qualified_cask_regexp
    @qualified_cask_regexp ||= %r{#{tap_regexp}/#{cask_regexp}}
  end

  def self.parse(name)
    return nil if ! name.kind_of?(String)
    return nil if ! name.downcase.match(%r{^#{qualified_cask_regexp}$})
    path_elements = name.downcase.split('/')
    if path_elements.count == 2
      # eg phinze-cask/google-chrome.
      # Not certain this form is needed, but it was supported in the past.
      cask = path_elements[1]
      dash_elements = path_elements[0].split('-')
      repo = dash_elements.pop
      dash_elements.pop if dash_elements.count > 1 and dash_elements[-1] + '-' == repo_prefix
      user = dash_elements.join('-')
    else
      # eg phinze/cask/google-chrome
      # per https://github.com/Homebrew/homebrew/wiki/brew-tap
      user, repo, cask = path_elements
    end
    repo.sub!(%r{^#{repo_prefix}}, '')
    odebug "[user, repo, cask] might be [#{user}, #{repo}, #{cask}]"
    [user, repo, cask]
  end
end
