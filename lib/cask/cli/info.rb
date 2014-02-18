class Cask::CLI::Info
  def self.run(*cask_names)
    raise CaskUnspecifiedError if cask_names.empty?
    cask_names.each do |cask_name|
      odebug "Getting info for Cask #{cask_name}"
      cask = Cask.load(cask_name)
      puts info(cask)
      Cask::Installer.print_caveats(cask)
    end
  end

  def self.help
    "displays information about the cask of the given name"
  end

  def self.info(cask)
    installation = if cask.installed?
                     "#{cask.destination_path} (#{cask.destination_path.cabv})"
                   else
                     "Not installed"
                   end

    <<-PURPOSE.undent
    #{cask}: #{cask.version}
    #{cask.homepage}
    #{installation}
    #{github_info(cask)}
    PURPOSE
  end

  def self.github_info(cask)
    tap = cask.title
    tap = cask.class.all_titles.grep(/#{tap}$/).first unless tap =~ /\//
    tap, name = tap.split "/"
    user, repo = tap.split "-"
    "https://github.com/#{user}/homebrew-#{repo}/commits/master/Casks/#{name}.rb"
  end
end
