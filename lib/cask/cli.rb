class Cask::CLI; end

require 'optparse'
require 'shellwords'

require 'cask/cli/alfred'
require 'cask/cli/audit'
require 'cask/cli/checklinks'
require 'cask/cli/create'
require 'cask/cli/doctor'
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

  def self.lookup_command(command_string)
    if command_string && Cask::CLI.const_defined?(command_string.capitalize)
      Cask::CLI.const_get(command_string.capitalize)
    else
      command_string
    end
  end

  def self.run_command(command, *rest)
    if command.respond_to?(:run)
      command.run(*rest)
    elsif which "brewcask-#{command}"
      exec "brewcask-#{command}", *ARGV[1..-1]
    elsif require? which("brewcask-#{command}.rb").to_s
      exit 0
    else
      Cask::CLI::NullCommand.new(command).run
    end
  end

  def self.process(arguments)
    command_string, *rest = *arguments
    rest = process_options(rest)
    Cask.init
    command = lookup_command(command_string)
    run_command(command, *rest)
  rescue CaskAlreadyInstalledError => e
    opoo e
    $stderr.puts e.backtrace if Cask.debug
    exit 0
  rescue CaskError => e
    onoe e
    $stderr.puts e.backtrace if Cask.debug
    exit 1
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
    # If you modify these arguments, please update USAGE.md
    @parser ||= OptionParser.new do |opts|
      opts.on("--caskroom=MANDATORY") do |v|
        Cask.caskroom = Pathname(v).expand_path
      end
      opts.on("--appdir=MANDATORY") do |v|
        Cask.appdir = Pathname(v).expand_path
      end
      opts.on("--colorpickerdir=MANDATORY") do |v|
        Cask.colorpickerdir = Pathname(v).expand_path
      end
      opts.on("--prefpanedir=MANDATORY") do |v|
        Cask.prefpanedir = Pathname(v).expand_path
      end
      opts.on("--qlplugindir=MANDATORY") do |v|
        Cask.qlplugindir = Pathname(v).expand_path
      end
      opts.on("--fontdir=MANDATORY") do |v|
        Cask.fontdir = Pathname(v).expand_path
      end
      opts.on("--widgetdir=MANDATORY") do |v|
        Cask.widgetdir = Pathname(v).expand_path
      end
      opts.on("--servicedir=MANDATORY") do |v|
        Cask.servicedir = Pathname(v).expand_path
      end
      opts.on("--binarydir=MANDATORY") do |v|
        Cask.binarydir = Pathname(v).expand_path
      end
      opts.on("--input_methoddir=MANDATORY") do |v|
        Cask.input_methoddir = Pathname(v).expand_path
      end
      opts.on("--screen_saverdir=MANDATORY") do |v|
       Cask.screen_saverdir = Pathname(v).expand_path
      end

      opts.on("--no-binaries") do |v|
        Cask.no_binaries = true
      end
      opts.on("--debug") do |v|
        Cask.debug = true
      end
    end
  end

  def self.process_options(args)
    all_args = Shellwords.shellsplit(ENV['HOMEBREW_CASK_OPTS'] || "") + args
    remaining = []
    until all_args.empty?
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

    def _help_for(command_string)
      command = Cask::CLI.lookup_command(command_string)
      if command.respond_to?(:help)
        command.help
      end
    end
  end
end
