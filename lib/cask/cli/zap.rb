class Cask::CLI::Zap < Cask::CLI::Base
  def self.run(*args)
    raise CaskUnspecifiedError if args.empty?
    cask_names = args.reject { |a| a.chars.first == '-' }
    cask_names.each do |cask_name|
      odebug "Zapping Cask #{cask_name}"
      cask = Cask.load(cask_name)
      Cask::Installer.new(cask).zap
    end
  end

  def self.help
    "zaps all files associated with the cask of the given name"
  end
end
