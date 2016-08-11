class Hbc::CLI::Uninstall < Hbc::CLI::Base
  def self.run(*args)
    cask_tokens = cask_tokens_from(args)
    raise Hbc::CaskUnspecifiedError if cask_tokens.empty?
    force = args.include? "--force"

    cask_tokens.each do |cask_token|
      odebug "Uninstalling Cask #{cask_token}"
      cask = Hbc.load(cask_token)

      raise Hbc::CaskNotInstalledError, cask unless cask.installed? || force

      latest_installed_version = cask.timestamped_versions.last

      unless latest_installed_version.nil?
        latest_installed_cask_file = cask.metadata_master_container_path
                                         .join(latest_installed_version.join(File::Separator),
                                               "Casks", "#{cask_token}.rb")

        # use the same cask file that was used for installation, if possible
        cask = Hbc.load(latest_installed_cask_file) if latest_installed_cask_file.exist?
      end

      Hbc::Installer.new(cask, force: force).uninstall

      next if (versions = cask.versions).empty?

      single = versions.count == 1

      puts <<-EOF.undent
        #{cask_token} #{versions.join(', ')} #{single ? 'is' : 'are'} still installed.
        Remove #{single ? 'it' : 'them all'} with `brew cask uninstall --force #{cask_token}`.
      EOF
    end
  end

  def self.help
    "uninstalls the given Cask"
  end
end
