class Cask::CLI; end

require 'optparse'
require 'shellwords'

require 'cask/cli/alfred'
require 'cask/cli/audit'
require 'cask/cli/checklinks'
require 'cask/cli/create'
require 'cask/cli/edit'
require 'cask/cli/home'
require 'cask/cli/info'
require 'cask/cli/install'
require 'cask/cli/list'
require 'cask/cli/search'
require 'cask/cli/uninstall'

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
    command, *rest = *arguments
    rest = process_options(rest)
    Cask.init
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

  def self.parser
    @parser ||= OptionParser.new do |opts|
      opts.on("--appdir=MANDATORY") do |v|
        Cask.appdir = Pathname(v).expand_path
      end
      opts.on("--prefpanedir=MANDATORY") do |v|
        Cask.prefpanedir = Pathname(v).expand_path
      end
    end
  end

  def self.process_options(args)
    all_args = Shellwords.shellsplit(ENV['HOMEBREW_CASK_OPTS'] || "") + args
    remaining = []
    while !all_args.empty?
      begin
        head = all_args.shift
        remaining.concat(parser.parse([head]))
      rescue OptionParser::InvalidOption
        remaining << head
        retry
      end
    end
    remaining
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
        administration of Mac applications distributed as binaries
      PURPOSE
    end

    def usage
      puts "available commands: "
      puts Cask::CLI.commands.map {|c| " - #{c.downcase}: #{_help_for(c)}"}.join("\n")
    end

    def help
      ''
    end

    def _help_for(command)
      Cask::CLI.lookup_command(command).help
    end
  end
end
