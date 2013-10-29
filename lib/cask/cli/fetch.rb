class Cask::CLI::Fetch
  def self.run(*args)
    cask_names = args.reject { |a| a == '--force' }
    force = args.include? '--force'
    cask_names.each do |cask_name|
      begin
       cask = Cask.load(cask_name)
       downloaded_path = Cask::Download.new(cask).perform
       Cask::SystemCommand.run!("mkdir -p \"$HOME/Downloads/Cask\"")
       Cask::SystemCommand.run!("mv \"#{downloaded_path}\" \"$HOME/Downloads/Cask/\"")
      rescue CaskError => e
        onoe e
      end
    end
  end

  def self.help
    "grabs the installer to ~/Downloads/Cask"
  end
end
