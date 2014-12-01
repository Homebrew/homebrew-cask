class Cask::CLI; end

require 'optparse'
require 'shellwords'

require 'cask/cli/base'
require 'cask/cli/alfred'
require 'cask/cli/audit'
require 'cask/cli/cat'
require 'cask/cli/cleanup'
require 'cask/cli/create'
require 'cask/cli/doctor'
require 'cask/cli/edit'
require 'cask/cli/fetch'
require 'cask/cli/home'
require 'cask/cli/info'
require 'cask/cli/install'
require 'cask/cli/list'
require 'cask/cli/search'
require 'cask/cli/uninstall'
require 'cask/cli/update'
require 'cask/cli/zap'

require 'cask/cli/internal_use_base'
require 'cask/cli/internal_checkurl'
require 'cask/cli/internal_dump'
require 'cask/cli/internal_help'
require 'cask/cli/internal_stanza'

class Cask::CLI

  ISSUES_URL = "https://github.com/caskroom/homebrew-cask/issues"

  ALIASES = {
             'ls'             => 'list',
             'homepage'       => 'home',
             '-S'             => 'search',    # verb starting with "-" is questionable
             'up'             => 'update',
             'instal'         => 'install',   # gem does the same
             'rm'             => 'uninstall',
             'remove'         => 'uninstall',
             'abv'            => 'info',
             'dr'             => 'doctor',
             # aliases from Homebrew that we don't (yet) support
             # 'ln'           => 'link',
             # 'configure'    => 'diy',
             # '--repo'       => '--repository',
             # 'environment'  => '--env',
             # '-c1'          => '--config',
            }

  def self.command_classes
    @@command_classes ||= Cask::CLI.constants.
                          map    { |sym| Cask::CLI.const_get sym }.
                          select { |sym| sym.respond_to?(:run)   }
  end

  def self.commands
    @@commands ||= command_classes.map { |sym| sym.command_name }
  end

  def self.lookup_command(command_string)
    @@lookup ||= Hash[commands.zip(command_classes)]
    command_string = ALIASES.fetch(command_string, command_string)
    @@lookup.fetch(command_string, command_string)
  end

  # modified from Homebrew
  def self.require? path
    require path
    true    # OK if already loaded
  rescue LoadError => e
    # HACK :( because we should raise on syntax errors but
    # not if the file doesn't exist. TODO make robust!
    raise unless e.to_s.include? path
  end

  def self.run_command(command, *rest)
    if command.respond_to?(:run)
      # usual case: built-in command verb
      command.run(*rest)
    elsif require? which("brewcask-#{command}.rb").to_s
      # external command as Ruby library on PATH, Homebrew-style
      exit 0
    elsif command.to_s.include?('/') and require? command.to_s
      # external command as Ruby library with literal path, useful
      # for development and troubleshooting
      sym = Pathname.new(command.to_s).basename('.rb').to_s.capitalize
      klass = begin
                Cask::CLI.const_get(sym)
              rescue NameError => e
                nil
              end
      if klass.respond_to?(:run)
        # invoke "run" on a Ruby library which follows our coding conventions
        klass.run(*rest)
      else
        # other Ruby libraries must do everything via "require"
        exit 0
      end
    elsif which "brewcask-#{command}"
      # arbitrary external executable on PATH, Homebrew-style
      exec "brewcask-#{command}", *ARGV[1..-1]
    elsif Pathname.new(command.to_s).executable? and
          command.to_s.include?('/')             and
          not command.to_s.match(%{\.rb$})
      # arbitrary external executable with literal path, useful
      # for development and troubleshooting
      exec command, *ARGV[1..-1]
    else
      # failure
      Cask::CLI::NullCommand.new(command).run
    end
  end

  def self.process(arguments)
    command_string, *rest = *arguments
    rest = process_options(rest)
    Cask.init
    command = lookup_command(command_string)
    run_command(command, *rest)
  rescue CaskError, ChecksumMismatchError => e
    onoe e
    $stderr.puts e.backtrace if Cask.debug
    exit 1
  rescue StandardError, ScriptError, NoMemoryError => e
    onoe e
    puts "#{Tty.white}Please report this bug:"
    puts "    #{Tty.em}#{ISSUES_URL}#{Tty.reset}"
    puts e.backtrace
    exit 1
  end

  def self.nice_listing(cask_list)
    cask_taps = {}
    cask_list.each do |c|
      user, repo, token = c.split '/'
      repo.sub!(/^homebrew-/i, '')
      cask_taps[token] ||= []
      cask_taps[token].push "#{user}/#{repo}"
    end
    list = []
    cask_taps.each do |token,taps|
      if taps.length == 1
        list.push token
      else
        taps.each { |r| list.push [r,token].join '/' }
      end
    end
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
      opts.on("--internet_plugindir=MANDATORY") do |v|
        Cask.internet_plugindir = Pathname(v).expand_path
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
      opts.on("--outdated") do |v|
        Cask.outdated = true
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
      rescue OptionParser::MissingArgument
        raise CaskError.new("The option '#{head}' requires an argument")
      rescue OptionParser::AmbiguousOption
        raise CaskError.new(
          "There is more than one possible option that starts with '#{head}'")
      end
    end
    remaining
  end

  class NullCommand
    def initialize(attempted_verb)
      @attempted_verb = attempted_verb
    end

    def run(*args)
      if args.include?('--version') or @attempted_verb == '--version'
        puts HOMEBREW_CASK_VERSION
      else
        purpose
        if @attempted_verb and @attempted_verb != "help"
          puts "!! "
          puts "!! no command verb: #{@attempted_verb}"
          puts "!! \n\n"
        end
        usage
      end
    end

    def purpose
      puts <<-PURPOSE.undent
        brew-cask provides a friendly homebrew-style CLI workflow for the
        administration of Mac applications distributed as binaries.

      PURPOSE
    end

    def usage
      max_command_len = Cask::CLI.commands.map(&:length).max

      puts "Commands:\n\n"
      Cask::CLI.command_classes.each do |klass|
        next unless klass.visible
        puts "    #{klass.command_name.ljust(max_command_len)}  #{_help_for(klass)}"
      end
      puts %Q{\nSee also "man brew-cask"}
    end

    def help
      ''
    end

    def _help_for(klass)
      klass.respond_to?(:help) ? klass.help : nil
    end
  end
end
