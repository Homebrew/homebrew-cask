require 'hbc/source/tapped_qualified'

class Hbc::Source::UntappedQualified < Hbc::Source::TappedQualified
  def self.path_for_query(query)
    user, repo, token = Hbc::QualifiedToken::parse(query)
    token.sub!(/\.rb$/i,'')
    tap = "#{user}/homebrew-#{repo}"
    unless Hbc.homebrew_tapspath.join(tap).exist?
      ohai "Adding new tap '#{tap}'"
      result = Hbc::SystemCommand.run!(Hbc.homebrew_executable,
                                       :args => ['tap', "#{user}/#{repo}"])
              puts result.stdout
      $stderr.puts result.stderr
    end
    Hbc.homebrew_tapspath.join(tap, 'Casks', "#{token}.rb")
  end
end
