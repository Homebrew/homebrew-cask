class Cask::CLI::Info < Cask::CLI::Base
  def self.run(*args)
    cask_tokens = cask_tokens_from(args)
    raise CaskUnspecifiedError if cask_tokens.empty?
    cask_tokens.each do |cask_token|
      odebug "Getting info for Cask #{cask_token}"
      cask = Cask.load(cask_token)
      puts info(cask)
      Cask::Installer.print_caveats(cask)
    end
  end

  def self.help
    "displays information about the given Cask"
  end

  def self.info(cask)
    installation = if cask.installed?
                     "#{cask.staged_path} (#{cask.staged_path.cabv})"
                   else
                     "Not installed"
                   end

    <<-PURPOSE
#{cask}: #{cask.version}
#{cask.homepage or 'No Homepage'}
#{installation}
#{github_info(cask) or 'No GitHub URL'}
#{artifact_info(cask) or 'No Artifact Info'}
PURPOSE
  end

  def self.github_info(cask)
    cask_token = cask.token
    cask_token = cask.class.all_tokens.detect { |t| t.split("/").last == cask_token } unless cask_token =~ /\//
    return nil unless cask_token.respond_to?(:length) and cask_token.length > 0
    path_elements = cask_token.split '/'
    if path_elements.count == 2
      # eg caskroom-cask/google-chrome.
      # Not certain this form is needed, but it was supported in the past.
      token = path_elements[1]
      dash_elements = path_elements[0].split('-')
      repo = dash_elements.pop
      dash_elements.pop if dash_elements.count > 1 and dash_elements[-1] + '-' == repo_prefix
      user = dash_elements.join('-')
    else
      user, repo, token = path_elements
    end
    repo.sub!(/^homebrew-/i, '')
    "https://github.com/#{user}/homebrew-#{repo}/blob/master/Casks/#{token}.rb"
  end

  def self.artifact_info(cask)
    retval = ''
    Cask::DSL::ClassMethods.ordinary_artifact_types.each do |type|
      if cask.artifacts[type].length > 0
        retval = "#{Tty.blue}==>#{Tty.white} Contents#{Tty.reset}\n" unless retval.length > 0
        cask.artifacts[type].each do |artifact|
          activatable_item = type == :stage_only ? '<none>' : artifact.first
          retval.concat "  #{activatable_item} (#{type.to_s})\n"
        end
      end
    end
    retval.sub!(/\n\Z/, '')
  end
end
