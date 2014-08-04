require 'cask/source/tapped'

class Cask::Source::TappedQualified < Cask::Source::Tapped
  def self.me?(query)
    !!Cask::QualifiedCaskName::parse(query) and path_for_query(query).exist?
  end

  def self.path_for_query(query)
    user, repo, cask = Cask::QualifiedCaskName::parse(query)
    cask.sub!(/\.rb$/i,'')
    tap = "#{user}/homebrew-#{repo}"
    Cask.tapspath.join(tap, 'Casks', "#{cask}.rb")
  end
end
