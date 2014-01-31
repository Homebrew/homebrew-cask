require 'cask/source/tapped_qualified'
require 'cmd/tap'

class Cask::Source::UntappedQualified < Cask::Source::TappedQualified
  def self.path_for_query(query)
    user, repo, cask = Cask::QualifiedCaskName::parse(query)
    tap = "#{user}-#{repo}"
    unless Cask.tapspath.join(tap).exist?
      ohai "Adding new tap '#{tap}'"
      Homebrew.install_tap(user, repo)
    end
    Cask.tapspath.join(tap, 'Casks', "#{cask}.rb")
  end
end
