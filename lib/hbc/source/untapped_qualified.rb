require "hbc/source/tapped_qualified"

class Hbc::Source::UntappedQualified < Hbc::Source::TappedQualified
  def self.path_for_query(query)
    user, repo, token = Hbc::QualifiedToken.parse(query)

    tap = Tap.fetch(user, repo)
    tap.install unless tap.installed?
    tap.cask_dir.join(token.sub(%r{(\.rb)?$}i, ".rb"))
  end
end
