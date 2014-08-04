class Cask::CLI::Cat < Cask::CLI::Base
  def self.run(*arguments)
    # only respects the first argument
    raise CaskUnspecifiedError if arguments.empty?
    cask_name = arguments.first.sub(/\.rb$/i, '')
    cask_path = Cask.path(cask_name)
    raise CaskUnavailableError, cask_name.to_s unless cask_path.exist?
    puts File.open(cask_path) { |f| f.read }
  end

  def self.help
    "dump raw source of the given Cask to the standard output"
  end
end
