class Cask::CLI::Zap < Cask::CLI::Base
  def self.run(*args)
    cask_names = cask_names_from(args)
    raise CaskUnspecifiedError if cask_names.empty?
    cask_names.each do |cask_name|
      odebug "Zapping Cask #{cask_name}"
      cask = Cask.load(cask_name)
      Cask::Installer.new(cask).zap
    end
  end

  def self.help
    "zaps all files associated with the Cask of the given name"
  end
end
