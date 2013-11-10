class Cask::CLI::Info
  def self.run(*cask_names)
    cask_names.each do |cask_name|
      begin
        cask = Cask.load(cask_name)
        puts info(cask)
        unless cask.caveats.empty?
          ohai "Caveats", cask.caveats
        end
      rescue CaskUnavailableError => e
        onoe e
      end
    end
  end

  def self.help
    "displays information about the cask of the given name"
  end

  def self.info(cask)
    installation = if cask.installed?
                     "#{cask.destination_path} (#{cask.destination_path.abv})"
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
