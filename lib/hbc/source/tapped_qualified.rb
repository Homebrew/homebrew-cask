require 'hbc/source/tapped'

class Hbc::Source::TappedQualified < Hbc::Source::Tapped
  def self.me?(query)
    !!Hbc::QualifiedToken::parse(query) and path_for_query(query).exist?
  end

  def self.path_for_query(query)
    user, repo, token = Hbc::QualifiedToken::parse(query)
    token.sub!(/\.rb$/i,'')
    tap = "#{user}/homebrew-#{repo}"
    Hbc.homebrew_tapspath.join(tap, 'Casks', "#{token}.rb")
  end
end
