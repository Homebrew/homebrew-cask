class Cask::CLI
  def self.commands
    Cask::CLI.constants - ["NullCommand"]
  end

  def self.lookup_command(command)
    if command && Cask::CLI.const_defined?(command.capitalize)
      Cask::CLI.const_get(command.capitalize)
    else
      Cask::CLI::NullCommand.new(command)
    end
  end

  def self.process(arguments)
    Cask.init
    command, *rest = *arguments
    lookup_command(command).run(*rest)
  end

  class NullCommand
    def initialize(attempted_name)
      @attempted_name = attempted_name
    end

    def run(*args)
      purpose
      if @attempted_name
        puts "!! "
        puts "!! no command with name: #{@attempted_name}"
        puts "!! "
      end
      usage
    end

    def purpose
      puts <<-PURPOSE.gsub(/^ {6}/, '')
      {{ brew-cask }}
        brew-cask provides a friendly homebrew-style CLI workflow for the
        administration Mac applications distributed as binaries
      PURPOSE
    end

    def usage
      puts "available commands: "
      puts Cask::CLI.commands.map {|c| " - #{c.downcase}: #{_help_for(c)}"}.join("\n")
    end

    def _help_for(command)
      Cask::CLI.lookup_command(command).help
    end
  end
end
