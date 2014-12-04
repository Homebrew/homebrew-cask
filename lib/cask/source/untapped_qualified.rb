require 'cask/source/tapped_qualified'
require 'cmd/tap'

class Cask::Source::UntappedQualified < Cask::Source::TappedQualified
  def self.path_for_query(query)
    user, repo, token = Cask::QualifiedToken::parse(query)
    token.sub!(/\.rb$/i,'')
    tap = "#{user}/homebrew-#{repo}"
    unless Cask.tapspath.join(tap).exist?
      ohai "Adding new tap '#{tap}'"
      Homebrew.install_tap(user, repo)
      Cask.reset_all_tapped_cask_dirs
    end
    Cask.tapspath.join(tap, 'Casks', "#{token}.rb")
  end
end
