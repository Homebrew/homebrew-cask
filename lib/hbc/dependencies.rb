module Hbc::Dependencies
  class Base
    def self.valid?(deps = []); end

    def initialize(command: Hbc::SystemCommand, conflict: false)
      @deps = []
      @command = command
      @conflict = conflict
      @dsl_verb = @conflict ? 'conflicts_with' : 'depends_on'
    end

    attr_accessor :deps
    attr_accessor :conflict

    def load(*arg)
      @deps.concat(Array(*arg))
      self
    end

    def check!(cask); end
  end

  class MacOSDependencies < Base
    def coerce_os_release(arg)

      @osx_symbols ||= MacOS::Release::SYMBOLS
      @inverted_osx_symbols ||= @osx_symbols.invert

      begin
        if arg.is_a?(Symbol)
          Gem::Version.new(@osx_symbols.fetch(arg))
        elsif arg =~ %r{^\s*:?([a-z]\S+)\s*$}i
          Gem::Version.new(@osx_symbols.fetch($1.downcase.to_sym))
        elsif @inverted_osx_symbols.has_key?(arg)
          Gem::Version.new(arg)
        else
          raise
        end
      rescue StandardError
        raise "invalid '#{@dsl_verb} :macos' value: #{arg.inspect}"
      end
    end

    def load(*arg)
      macos = if arg.count == 1 and
                 arg.first =~ %r{^\s*(<|>|[=<>]=)\s*(\S+)\s*$}
        raise "'#{@dsl_verb} :macos' comparison expressions cannot be combined" unless @deps.empty?
        operator = $1.to_sym
        release = coerce_os_release($2)
        [[ operator, release ]]
      else
        raise "'#{@dsl_verb} :macos' comparison expressions cannot be combined" if @deps.first.is_a?(Symbol)
        Array(*arg).map do |elt|
          coerce_os_release(elt)
        end.sort
      end
      super(macos)
    end

    def check!(cask)
      if @deps.first.is_a?(Array)
        operator, release = @deps.first
        unless MacOS.release.send(operator, release) ^ @conflict
          raise Hbc::CaskError.new "Cask #{cask} #{@dsl_verb.sub('_', ' ')} OS X release #{operator} #{release}, and you are running release #{MacOS.release}."
        end
      else
        unless @deps.include?(Gem::Version.new(MacOS.release.to_s)) ^ @conflict
          raise Hbc::CaskError.new "Cask #{cask} #{@dsl_verb.sub('_', ' ')} OS X release being one of: #{@deps.inspect}, and you are running release #{MacOS.release}."
        end
      end
    end
  end

  class ArchDependencies < Base

    VALID_ARCHES = [
                    # category
                    :intel,
                    :ppc,
                    # specific
                    :i386,
                    :x86_64,
                    :ppc_7400,
                    :ppc_64,
                   ]

    # Intentionally undocumented: catch variant spellings.
    ARCH_SYNONYMS = {
                     :x86_32     => :i386,
                     :x8632      => :i386,
                     :x8664      => :x86_64,
                     :intel_32   => :i386,
                     :intel32    => :i386,
                     :intel_64   => :x86_64,
                     :intel64    => :x86_64,
                     :amd_64     => :x86_64,
                     :amd64      => :x86_64,
                     :ppc7400    => :ppc_7400,
                     :ppc_32     => :ppc_7400,
                     :ppc32      => :ppc_7400,
                     :ppc64      => :ppc_64,
                    }

    def load(*arg)
      arches = Array(*arg).map do |elt|
        elt = elt.to_s.downcase.sub(%r{^:},'').gsub('-','_').to_sym
        ARCH_SYNONYMS.key?(elt) ? ARCH_SYNONYMS[elt] : elt
      end
      invalid_arches = arches - VALID_ARCHES
      raise "invalid '#{@dsl_verb} :arch' values: #{invalid_arches.inspect}" unless invalid_arches.empty?
      super(arches)
    end

    def check!(cask)
      @@current_arch ||= [
                          Hardware::CPU.type,
                          Hardware::CPU.is_32_bit? ?
                            (Hardware::CPU.intel? ? :i386   : :ppc_7400) :
                            (Hardware::CPU.intel? ? :x86_64 : :ppc_64)
                         ]
      return unless Array(@deps & @@current_arch).empty? ^ @conflict
      raise Hbc::CaskError.new "Cask #{cask} #{@dsl_verb.sub('_', ' ')} hardware architecture being one of #{@deps.inspect}, and you are running #{@@current_arch.inspect}"
    end
  end

  class X11Dependencies < Base
    def load(arg)
      raise "invalid #{@dsl_verb} :x11 value: #{arg.inspect}" unless [true, false].include?(arg)
      super(arg)
    end

    def check!(cask)
      return unless @deps.first
      if Hbc.x11_libpng.select(&:exist?).empty? ^ @conflict
        raise Hbc::CaskX11DependencyError.new(cask.token, conflict: @conflict)
      end
    end
  end

  class FormulaDependencies < Base
    def check!(cask)
      ohai 'Installing Formula dependencies from Homebrew' unless @conflict
      @deps.each do |dep_name|
        print "#{dep_name} ... " unless @conflict
        installed = @command.run(Hbc.homebrew_executable,
                                 :args => ['list', '--versions', dep_name],
                                 :print_stderr => false).stdout.include?(dep_name)
        if installed
          raise Hbc::CaskError.new "Cask #{cask} conflicts with Homebrew formula #{conf_token}, and you have it installed." if @conflict
          puts "already installed"
        elsif !@conflict
          @command.run!(Hbc.homebrew_executable,
                        :args => ['install', dep_name])
          puts "done"
        end
      end
    end
  end

  class CaskDependencies < Base
    def check!(cask)
      ohai "Installing Cask dependencies: #{@deps.join(', ')}" unless @conflict
      deps = @conflict ? @deps : Hbc::CaskDependencies.new(cask).sorted
      deps.each do |dep_token|
        puts "#{dep_token} ..." unless @conflict
        dep = Hbc.load(dep_token)
        if dep.installed?
          raise Hbc::CaskError.new "Cask #{cask} conflicts with cask #{dep_token}, and you have it installed." if @conflict
          puts "already installed"
        elsif !@conflict
          Hbc::Installer.new(dep).install(false, true)
          puts "done"
        end
      end
    end
  end
end
