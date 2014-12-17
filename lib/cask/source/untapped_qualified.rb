require 'cask/source/tapped_qualified'

class Cask::Source::UntappedQualified < Cask::Source::TappedQualified
  def self.path_for_query(query)
    user, repo, token = Cask::QualifiedToken::parse(query)
    token.sub!(/\.rb$/i,'')
    tap = "#{user}/homebrew-#{repo}"
    unless Cask.tapspath.join(tap).exist?
      ohai "Adding new tap '#{tap}'"
      result = Cask::SystemCommand.run!(HOMEBREW_BREW_FILE,
                                        :args => ['tap', "#{user}/#{repo}"])
              puts result.stdout
      $stderr.puts result.stderr
    end
    Cask.tapspath.join(tap, 'Casks', "#{token}.rb")
  end
end
