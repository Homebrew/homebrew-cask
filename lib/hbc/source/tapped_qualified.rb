require "hbc/source/tapped"

class Hbc::Source::TappedQualified < Hbc::Source::Tapped
  def self.me?(query)
    !Hbc::QualifiedToken.parse(query).nil? && path_for_query(query).exist?
  end

  def self.path_for_query(query)
    user, repo, token = Hbc::QualifiedToken.parse(query)
    Tap.new(user, repo).cask_dir.join(token.sub(%r{(\.rb)?$}i, ".rb"))
  end
end
