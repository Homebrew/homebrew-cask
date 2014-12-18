# This script is loaded by formula_installer as a separate instance.
# Thrown exceptions are propogated back to the parent process over a pipe

old_trap = trap("INT") { exit! 130 }

require "global"
require "build_options"
require "keg"
require "extend/ENV"
require "fcntl"

class Build
  attr_reader :formula

  def initialize(formula, options)
    @formula = formula
    @formula.build = BuildOptions.new(options, formula.options)
  end

  def post_superenv_hacks
    true
  end

  def pre_superenv_hacks
    true
  end

  def install
    pre_superenv_hacks
    ENV.activate_extensions!

    if superenv?
      ENV.setup_build_environment(formula)
      post_superenv_hacks
    else
      ENV.setup_build_environment(formula)
    end

    formula.brew do
      if ARGV.flag? '--git'
        system "git", "init"
        system "git", "add", "-A"
      end
      if ARGV.interactive?
        ohai "Entering interactive mode"
        puts "Type `exit' to return and finalize the installation"
        puts "Install to this prefix: #{formula.prefix}"

        if ARGV.flag? '--git'
          puts "This directory is now a git repo. Make your changes and then use:"
          puts "  git diff | pbcopy"
          puts "to copy the diff to the clipboard."
        end

        interactive_shell(formula)
      else
        formula.prefix.mkpath

        formula.install

        stdlibs = detect_stdlibs
        Tab.create(formula, ENV.compiler, stdlibs.first, formula.build).write

        # Find and link metafiles
        formula.prefix.install_metafiles Pathname.pwd
      end
    end
  end

  def detect_stdlibs
    [:libcxx]
  end

  def fixopt f
    path = if f.linked_keg.directory? and f.linked_keg.symlink?
      f.linked_keg.resolved_path
    elsif f.prefix.directory?
      f.prefix
    elsif (kids = f.rack.children).size == 1 and kids.first.directory?
      kids.first
    else
      raise
    end
    Keg.new(path).optlink
  rescue StandardError
    raise "#{f.opt_prefix} not present or broken\nPlease reinstall #{f.name}. Sorry :("
  end
end

begin
  error_pipe = IO.new(ENV["HOMEBREW_ERROR_PIPE"].to_i, "w")
  error_pipe.fcntl(Fcntl::F_SETFD, Fcntl::FD_CLOEXEC)

  # Invalidate the current sudo timestamp in case a build script calls sudo
  system "/usr/bin/sudo", "-k"

  trap("INT", old_trap)

  formula = ARGV.formulae.first
  options = Options.create(ARGV.flags_only)
  build   = Build.new(formula, options)
  build.install
rescue Exception => e
  Marshal.dump(e, error_pipe)
  error_pipe.close
  exit! 1
end
