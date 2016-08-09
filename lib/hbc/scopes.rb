module Hbc::Scopes
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def all
      @all_casks ||= {}
      all_tokens.map { |t| @all_casks[t] ||= load(t) }
    end

    def all_tapped_cask_dirs
      return @all_tapped_cask_dirs unless @all_tapped_cask_dirs.nil?
      fq_default_tap = Hbc.homebrew_tapspath.join(default_tap, "Casks")
      @all_tapped_cask_dirs = Dir.glob(Hbc.homebrew_tapspath.join("*", "*", "Casks")).map { |d| Pathname.new(d) }
      # optimization: place the default Tap first
      if @all_tapped_cask_dirs.include? fq_default_tap
        @all_tapped_cask_dirs -= [fq_default_tap]
        @all_tapped_cask_dirs.unshift fq_default_tap
      end
      @all_tapped_cask_dirs
    end

    def reset_all_tapped_cask_dirs
      # The memoized value should be reset when a Tap is added/removed
      # (which is a rare event in our codebase).
      @all_tapped_cask_dirs = nil
    end

    def all_tokens
      cask_tokens = all_tapped_cask_dirs.map { |d| Dir.glob d.join("*.rb") }.flatten
      cask_tokens.map { |c|
        # => "/usr/local/Library/Taps/caskroom/example-tap/Casks/example.rb"
        c.sub!(%r{\.rb$}, "")
        # => ".../example"
        c = c.split("/").last 4
        # => ["caskroom", "example-tap", "Casks", "example"]
        c.delete_at(-2)
        # => ["caskroom", "example-tap", "example"]
        c.join "/"
      }
    end

    def installed
      # Hbc.load has some DWIM which is slow.  Optimize here
      # by spoon-feeding Hbc.load fully-qualified paths.
      # TODO: speed up Hbc::Source::Tapped (main perf drag is calling Hbc.all_tokens repeatedly)
      # TODO: ability to specify expected source when calling Hbc.load (minor perf benefit)
      Pathname.glob(caskroom.join("*"))
              .map { |dir| Hbc::Cask.new(dir.basename) }
              .select(&:installed?)
              .map { |cask|
                path_to_cask = all_tapped_cask_dirs.find { |tap_dir|
                  tap_dir.join("#{cask.token}.rb").exist?
                }

                if path_to_cask
                  Hbc.load(path_to_cask.join("#{cask.token}.rb"))
                else
                  Hbc.load(cask.token)
                end
              }
    end
  end
end
