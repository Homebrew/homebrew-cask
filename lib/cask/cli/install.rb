class Cask::CLI::Install
  def self.run(*cask_names)
    cask_names.each do |cask_name|
      cask = begin
               Cask.load(cask_name)
             rescue CaskUnavailableError => e
               onoe e
             end
      cask.install if cask
    end
  end

  def self.help
    "installs the cask of the given name"
  end
end
