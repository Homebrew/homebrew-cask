class Hbc::CLI::Info < Hbc::CLI::Base
  def self.run(*args)
    cask_tokens = cask_tokens_from(args)
    raise Hbc::CaskUnspecifiedError if cask_tokens.empty?
    cask_tokens.each do |cask_token|
      odebug "Getting info for Cask #{cask_token}"
      cask = Hbc.load(cask_token)

      info(cask)
    end
  end

  def self.help
    "displays information about the given Cask"
  end

  def self.info(cask)
    puts "#{cask.token}: #{cask.version}"
    puts formatted_url(cask.homepage) if cask.homepage
    installation_info(cask)
    puts "From: #{formatted_url(github_info(cask))}" if github_info(cask)
    name_info(cask)
    artifact_info(cask)
    Hbc::Installer.print_caveats(cask)
  end

  def self.formatted_url(url)
    "#{Hbc::Utils::Tty.underline}#{url}#{Hbc::Utils::Tty.reset}"
  end

  def self.installation_info(cask)
    if cask.installed?
      cask.versions.each do |version|
        versioned_staged_path = cask.caskroom_path.join(version)

        puts versioned_staged_path.to_s
          .concat(" (")
          .concat(versioned_staged_path.exist? ? versioned_staged_path.abv : "#{Hbc::Utils::Tty.red}does not exist#{Hbc::Utils::Tty.reset}")
          .concat(")")
      end
    else
      puts "Not installed"
    end
  end

  def self.name_info(cask)
    ohai cask.name.size > 1 ? "Names" : "Name"
    puts cask.name.empty? ? "#{Hbc::Utils::Tty.red}None#{Hbc::Utils::Tty.reset}" : cask.name
  end

  def self.github_info(cask)
    cask_token = cask.token
    cask_token = Hbc.all_tokens.detect { |t| t.split("/").last == cask_token } unless cask_token.include?("/")
    return nil unless cask_token.respond_to?(:length) && !cask_token.empty?
    path_elements = cask_token.split "/"
    if path_elements.count == 2
      # eg caskroom-cask/google-chrome.
      # Not certain this form is needed, but it was supported in the past.
      token = path_elements[1]
      dash_elements = path_elements[0].split("-")
      repo = dash_elements.pop
      dash_elements.pop if dash_elements.count > 1 && dash_elements[-1] + "-" == repo_prefix
      user = dash_elements.join("-")
    else
      user, repo, token = path_elements
    end
    repo.sub!(%r{^homebrew-}i, "")
    "https://github.com/#{user}/homebrew-#{repo}/blob/master/Casks/#{token}.rb"
  end

  def self.artifact_info(cask)
    ohai "Artifacts"
    Hbc::DSL::ORDINARY_ARTIFACT_TYPES.each do |type|
      next if cask.artifacts[type].empty?
      cask.artifacts[type].each do |artifact|
        activatable_item = type == :stage_only ? "<none>" : artifact.first
        puts "#{activatable_item} (#{type})"
      end
    end
  end
end
