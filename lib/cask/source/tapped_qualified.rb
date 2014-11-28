require 'cask/source/tapped'

class Cask::Source::TappedQualified < Cask::Source::Tapped
  def self.me?(query)
    !!Cask::QualifiedToken::parse(query) and path_for_query(query).exist?
  end

  def self.path_for_query(query)
    user, repo, token = Cask::QualifiedToken::parse(query)
    token.sub!(/\.rb$/i,'')
    tap = "#{user}/homebrew-#{repo}"
    Cask.tapspath.join(tap, 'Casks', "#{token}.rb")
  end
end
