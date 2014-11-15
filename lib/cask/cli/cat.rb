class Cask::CLI::Cat < Cask::CLI::Base
  def self.run(*args)
    cask_names = cask_names_from(args)
    raise CaskUnspecifiedError if cask_names.empty?
    # only respects the first argument
    cask_name = cask_names.first.sub(/\.rb$/i, '')
    cask_path = Cask.path(cask_name)
    raise CaskUnavailableError, cask_name.to_s unless cask_path.exist?
    puts File.open(cask_path) { |f| f.read }
  end

  def self.help
    "dump raw source of the given Cask to the standard output"
  end
end
