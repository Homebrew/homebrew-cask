class Cask::CLI::Info < Cask::CLI::Base
  def self.run(*args)
    cask_names = cask_names_from(args)
    raise CaskUnspecifiedError if cask_names.empty?
    cask_names.each do |cask_name|
      odebug "Getting info for Cask #{cask_name}"
      cask = Cask.load(cask_name)
      puts info(cask)
      Cask::Installer.print_caveats(cask)
    end
  end

  def self.help
    "displays information about the Cask of the given name"
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
    title = cask.title
    title = cask.class.all_titles.detect { |t| t.split("/").last == title } unless title =~ /\//
    return nil unless title.respond_to?(:length) and title.length > 0
    path_elements = title.split '/'
    if path_elements.count == 2
      # eg caskroom-cask/google-chrome.
      # Not certain this form is needed, but it was supported in the past.
      name = path_elements[1]
      dash_elements = path_elements[0].split('-')
      repo = dash_elements.pop
      dash_elements.pop if dash_elements.count > 1 and dash_elements[-1] + '-' == repo_prefix
      user = dash_elements.join('-')
    else
      user, repo, name = path_elements
    end
    repo.sub!(/^homebrew-/i, '')
    "https://github.com/#{user}/homebrew-#{repo}/blob/master/Casks/#{name}.rb"
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
