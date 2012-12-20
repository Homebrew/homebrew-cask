require 'optparse'
require 'shellwords'

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
    rest = process_options(rest)
    lookup_command(command).run(*rest)
  end

  def self.nice_listing(cask_list)
    casks = {}
    cask_list.each { |c|
      repo, name = c.split "/"
      casks[name] ||= []
      casks[name].push repo
    }
    list = []
    casks.each { |name,repos|
      if repos.length == 1
        list.push name
      else
        repos.each { |r| list.push [r,name].join "/" }
      end
    }
    list.sort
  end
  
  def self.process_options(args)
    allrgs = Shellwords.shellsplit(ENV['HOMEBREW_CASK_OPTS'] || "") + args
    OptionParser.new do |opts|
      opts.on("--appdir=MANDATORY") do |v|
        Cask.appdir = Pathname.new File.expand_path(v)
      end
    end.parse!(allrgs)
    return allrgs
  end


  class NullCommand
    def initialize(attempted_name)
      @attempted_name = attempted_name
    end

    def run(*args)
      purpose
      if @attempted_name and @attempted_name != "help"
        puts "!! "
        puts "!! no command with name: #{@attempted_name}"
        puts "!! "
      end
      usage
    end

    def purpose
      puts <<-PURPOSE.undent
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
