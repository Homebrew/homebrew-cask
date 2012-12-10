class Cask::CLI::Info
  def self.run(*cask_names)
    cask_names.each do |cask_name|
      begin
        cask = Cask.load(cask_name)
        puts cask.info
      rescue CaskUnavailableError => e
        onoe e
      end
    end
  end

  def self.help
    "displays information about the cask of the given name"
  end
end
