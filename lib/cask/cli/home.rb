module Cask::CLI::Home
  def self.run(*cask_names)
    raise CaskUnspecifiedError if cask_names.empty?
    cask_names.each do |cask_name|
      begin
        cask = Cask.load(cask_name)
        system "open", cask.homepage
      rescue CaskUnavailableError => e
        onoe e
      end
    end
  end

  def self.help
    "opens the homepage of the cask of the given name"
  end
end
