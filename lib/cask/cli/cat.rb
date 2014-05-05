module Cask::CLI::Cat
  def self.run(*arguments)
    # do not "fix" this to support multiple arguments, the output would be
    # unparsable, if the user wants to cat multiple formula they can call
    # brew cask cat multiple times.

    raise CaskUnspecifiedError if arguments.empty?
    cask_name = arguments.first.sub(/\.rb$/i,'')
    cask_path = Cask.path(cask_name)
    raise CaskUnavailableError, "#{cask_name}" unless cask_path.exist?
    puts File.open(cask_path){|f| f.read}
  end

  def self.help
    "display the source of cask."
  end
end
