require "hbc/source/tapped"

class Hbc::Source::TappedQualified < Hbc::Source::Tapped
  def self.me?(query)
    !Hbc::QualifiedToken.parse(query).nil? && path_for_query(query).exist?
  end

  def self.path_for_query(query)
    user, repo, token = Hbc::QualifiedToken.parse(query)
    tap = "#{user}/#{Hbc::QualifiedToken::REPO_PREFIX}#{repo}"
    Hbc.homebrew_tapspath.join(tap, "Casks", token.sub(%r{(\.rb)?$}i, ".rb"))
  end
end
