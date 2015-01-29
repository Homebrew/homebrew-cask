module Hbc::Conflicts
  class Base
    def initialize(command = Hbc::SystemCommand)
      @args = []
      @command = command
    end

    attr_accessor :args

    def load(args=[])
      @args.concat(Array(args))
      self
    end

    def check!(cask); end
  end

  class MacOSConflicts < Base
    def check!(cask)
      if @args.first.is_a?(Array)
        operator, release = @args.first
        if MacOS.release.send(operator, release)
          raise Hbc::CaskError.new "Cask #{cask} conflicts with OS X release #{operator} #{release}, and you are running release #{MacOS.release}."
        end
      elsif @args.length > 1
        if @args.include?(Gem::Version.new(MacOS.release.to_s))
          raise Hbc::CaskError.new "Cask #{cask} conflicts with OS X release being one of: #{@args.inspect}, and you are running release #{MacOS.release}."
        end
      else
        if MacOS.release == @args.first
          raise Hbc::CaskError.new "Cask #{cask} conflicts with OS X release #{@args.first}, and you are running release #{MacOS.release}."
        end
      end
    end
  end

  class ArchConflicts < Base
    def check!(cask)
      @@current_arch ||= [
                          Hardware::CPU.type,
                          Hardware::CPU.is_32_bit? ?
                            (Hardware::CPU.intel? ? :i386   : :ppc_7400) :
                            (Hardware::CPU.intel? ? :x86_64 : :ppc_64)
                         ]
      return if Array(@args & @@current_arch).empty?
      raise Hbc::CaskError.new "Cask #{cask} conflicts with hardware architecture being one of #{@args.inspect}, and you are running #{@@current_arch.inspect}"
    end
  end

  class X11Conflicts < Base
    def check!(cask)
      unless Hbc.x11_libpng.select(&:exist?).empty?
        raise Hbc::CaskError.new "Cask #{cask} conflicts with XQuartz/X11, and you have it installed."
      end
    end
  end

  class FormulaConflicts < Base
    def check!(cask)
      @args.each do |conf_token|
        installed = @command.run(Hbc.homebrew_executable,
                                 :args => ['list', '--versions', conf_token],
                                 :print_stderr => false).stdout.include?(conf_token)
        if installed
          raise Hbc::CaskError.new "Cask #{cask} conflicts with Homebrew formula #{conf_token}, and you have it installed."
        end
      end
    end
  end

  class CaskConflicts < Base
    def check!(cask)
      @args.each do |conf_token|
        dep = Hbc.load(conf_token)
        if dep.installed?
          raise Hbc::CaskError.new "Cask #{cask} conflicts with cask #{conf_token}, and you have it installed."
        end
      end
    end
  end
end
