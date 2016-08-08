class Hbc::CLI; end

require "optparse"
require "shellwords"

require "hbc/cli/base"
require "hbc/cli/audit"
require "hbc/cli/cat"
require "hbc/cli/cleanup"
require "hbc/cli/create"
require "hbc/cli/doctor"
require "hbc/cli/edit"
require "hbc/cli/fetch"
require "hbc/cli/home"
require "hbc/cli/info"
require "hbc/cli/install"
require "hbc/cli/list"
require "hbc/cli/search"
require "hbc/cli/style"
require "hbc/cli/uninstall"
require "hbc/cli/update"
require "hbc/cli/zap"

require "hbc/cli/internal_use_base"
require "hbc/cli/internal_audit_modified_casks"
require "hbc/cli/internal_checkurl"
require "hbc/cli/internal_dump"
require "hbc/cli/internal_help"
require "hbc/cli/internal_stanza"

class Hbc::CLI
  ALIASES = {
              "ls"       => "list",
              "homepage" => "home",
              "-S"       => "search",    # verb starting with "-" is questionable
              "up"       => "update",
              "instal"   => "install",   # gem does the same
              "rm"       => "uninstall",
              "remove"   => "uninstall",
              "abv"      => "info",
              "dr"       => "doctor",
              # aliases from Homebrew that we don't (yet) support
              # 'ln'          => 'link',
              # 'configure'   => 'diy',
              # '--repo'      => '--repository',
              # 'environment' => '--env',
              # '-c1'         => '--config',
            }.freeze

  OPTIONS = {
              "--caskroom="             => :caskroom=,
              "--appdir="               => :appdir=,
              "--colorpickerdir="       => :colorpickerdir=,
              "--prefpanedir="          => :prefpanedir=,
              "--qlplugindir="          => :qlplugindir=,
              "--fontdir="              => :fontdir=,
              "--servicedir="           => :servicedir=,
              "--input_methoddir="      => :input_methoddir=,
              "--internet_plugindir="   => :internet_plugindir=,
              "--audio_unit_plugindir=" => :audio_unit_plugindir=,
              "--vst_plugindir="        => :vst_plugindir=,
              "--vst3_plugindir="       => :vst3_plugindir=,
              "--screen_saverdir="      => :screen_saverdir=,
            }.freeze

  FLAGS = {
            "--no-binaries" => :no_binaries=,
            "--debug"       => :debug=,
            "--verbose"     => :verbose=,
            "--outdated"    => :cleanup_outdated=,
            "--help"        => :help=,
          }.freeze

  def self.command_classes
    @command_classes ||= Hbc::CLI.constants
                                 .map(&Hbc::CLI.method(:const_get))
                                 .select { |sym| sym.respond_to?(:run) }
  end

  def self.commands
    @commands ||= command_classes.map(&:command_name)
  end

  def self.lookup_command(command_string)
    @lookup ||= Hash[commands.zip(command_classes)]
    command_string = ALIASES.fetch(command_string, command_string)
    @lookup.fetch(command_string, command_string)
  end

  # modified from Homebrew
  def self.require?(path)
    require path
    true # OK if already loaded
  rescue LoadError => e
    # HACK: :( because we should raise on syntax errors
    #       but not if the file doesn't exist.
    # TODO: make robust!
    raise unless e.to_s.include? path
  end

  def self.should_init?(command)
    (command.is_a? Class) && (command < Hbc::CLI::Base) && command.needs_init?
  end

  def self.run_command(command, *rest)
    if command.respond_to?(:run)
      # usual case: built-in command verb
      command.run(*rest)
    elsif require? Hbc::Utils.which("brewcask-#{command}.rb").to_s
      # external command as Ruby library on PATH, Homebrew-style
    elsif command.to_s.include?("/") && require?(command.to_s)
      # external command as Ruby library with literal path, useful
      # for development and troubleshooting
      sym = Pathname.new(command.to_s).basename(".rb").to_s.capitalize
      klass = begin
                Hbc::CLI.const_get(sym)
              rescue NameError
                nil
              end
      if klass.respond_to?(:run)
        # invoke "run" on a Ruby library which follows our coding conventions
        klass.run(*rest)
      else
        # other Ruby libraries must do everything via "require"
      end
    elsif Hbc::Utils.which "brewcask-#{command}"
      # arbitrary external executable on PATH, Homebrew-style
      exec "brewcask-#{command}", *ARGV[1..-1]
    elsif Pathname.new(command.to_s).executable? &&
          command.to_s.include?("/") &&
          !command.to_s.match(%r{\.rb$})
      # arbitrary external executable with literal path, useful
      # for development and troubleshooting
      exec command, *ARGV[1..-1]
    else
      # failure
      Hbc::CLI::NullCommand.new(command).run
    end
  end

  def self.process(arguments)
    command_string, *rest = *arguments
    rest = process_options(rest)
    command = Hbc.help ? "help" : lookup_command(command_string)
    Hbc.init if should_init?(command)
    run_command(command, *rest)
  rescue Hbc::CaskError, Hbc::CaskSha256MismatchError => e
    msg = e.message
    msg << e.backtrace.join("\n") if Hbc.debug
    onoe msg
    exit 1
  rescue StandardError, ScriptError, NoMemoryError => e
    msg = e.message
    msg << Hbc::Utils.error_message_with_suggestions
    msg << e.backtrace.join("\n")
    onoe msg
    exit 1
  end

  def self.nice_listing(cask_list)
    cask_taps = {}
    cask_list.each do |c|
      user, repo, token = c.split "/"
      repo.sub!(%r{^homebrew-}i, "")
      cask_taps[token] ||= []
      cask_taps[token].push "#{user}/#{repo}"
    end
    list = []
    cask_taps.each do |token, taps|
      if taps.length == 1
        list.push token
      else
        taps.each { |r| list.push [r, token].join "/" }
      end
    end
    list.sort
  end

  def self.parser
    # If you modify these arguments, please update USAGE.md
    @parser ||= OptionParser.new do |opts|
      OPTIONS.each do |option, method|
        opts.on("#{option}" "PATH", Pathname) do |path|
          Hbc.public_send(method, path)
        end
      end

      opts.on("--binarydir=PATH") do
        opoo <<-EOF.undent
          Option --binarydir is obsolete!
          Homebrew-Cask now uses the same location as your Homebrew installation for executable links.
        EOF
      end

      FLAGS.each do |flag, method|
        opts.on(flag) do
          Hbc.public_send(method, true)
        end
      end

      opts.on("--version") do
        raise OptionParser::InvalidOption # override default handling of --version
      end
    end
  end

  def self.process_options(args)
    all_args = Shellwords.shellsplit(ENV["HOMEBREW_CASK_OPTS"] || "") + args
    remaining = []
    until all_args.empty?
      begin
        head = all_args.shift
        remaining.concat(parser.parse([head]))
      rescue OptionParser::InvalidOption
        remaining << head
        retry
      rescue OptionParser::MissingArgument
        raise Hbc::CaskError, "The option '#{head}' requires an argument"
      rescue OptionParser::AmbiguousOption
        raise Hbc::CaskError, "There is more than one possible option that starts with '#{head}'"
      end
    end

    # for compat with Homebrew, not certain if this is desirable
    Hbc.verbose = true if !ENV["VERBOSE"].nil? || !ENV["HOMEBREW_VERBOSE"].nil?

    remaining
  end

  class NullCommand
    def initialize(attempted_verb)
      @attempted_verb = attempted_verb
    end

    def run(*args)
      if args.include?("--version") || @attempted_verb == "--version"
        puts Hbc.full_version
      else
        purpose
        usage
        unless @attempted_verb.to_s.strip.empty? || @attempted_verb == "help"
          raise Hbc::CaskError, "Unknown command: #{@attempted_verb}"
        end
      end
    end

    def purpose
      puts <<-PURPOSE.undent
        brew-cask provides a friendly homebrew-style CLI workflow for the
        administration of macOS applications distributed as binaries.

      PURPOSE
    end

    def usage
      max_command_len = Hbc::CLI.commands.map(&:length).max

      puts "Commands:\n\n"
      Hbc::CLI.command_classes.each do |klass|
        next unless klass.visible
        puts "    #{klass.command_name.ljust(max_command_len)}  #{_help_for(klass)}"
      end
      puts %Q{\nSee also "man brew-cask"}
    end

    def help
      ""
    end

    def _help_for(klass)
      klass.respond_to?(:help) ? klass.help : nil
    end
  end
end
