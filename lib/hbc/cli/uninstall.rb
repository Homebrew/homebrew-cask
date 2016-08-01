class Hbc::CLI::Uninstall < Hbc::CLI::Base
  def self.run(*args)
    cask_tokens = cask_tokens_from(args)
    raise Hbc::CaskUnspecifiedError if cask_tokens.empty?
    force = args.include? "--force"

    cask_tokens.each do |cask_token|
      odebug "Uninstalling Cask #{cask_token}"
      cask = Hbc::Cask.new(cask_token)

      unless cask.installed?
        cask.caskroom_path.rmtree if cask.caskroom_path.exist?
        raise Hbc::CaskNotInstalledError, cask unless force
      end

      latest_installed_version = cask.timestamped_versions.last

      unless latest_installed_version.nil?
        latest_installed_cask_file = cask.metadata_master_container_path
                                         .join(latest_installed_version.join(File::Separator),
                                               "Casks", "#{cask_token}.rb")

        # use the same cask file that was used for installation, if possible
        cask = if latest_installed_cask_file.exist?
                 Hbc.load(latest_installed_cask_file)
               else
                 Hbc.load(cask_token)
               end
      end

      Hbc::Installer.new(cask, force: force).uninstall

      next if (versions = cask.versions).empty?

      puts <<-EOF.undent
        #{cask_token} #{versions.join(', ')} #{versions.count == 1 ? 'is' : 'are'} still installed.
        Remove them all with `brew cask uninstall --force #{cask_token}`.
      EOF
    end
  end

  def self.help
    "uninstalls the given Cask"
  end
end
