module Cask::Scopes
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def all
      all_tokens.map { |c| self.load c }
    end

    def all_tapped_cask_dirs
      return @all_tapped_cask_dirs unless @all_tapped_cask_dirs.nil?
      fq_default_tap = tapspath.join(default_tap, 'Casks')
      @all_tapped_cask_dirs = Dir.glob(tapspath.join('*', '*', 'Casks')).map { |d| Pathname.new(d) }
      # optimization: place the default Tap first
      if @all_tapped_cask_dirs.include? fq_default_tap
        @all_tapped_cask_dirs = @all_tapped_cask_dirs - [ fq_default_tap ]
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
      cask_tokens = all_tapped_cask_dirs.map { |d| Dir.glob d.join('*.rb') }.flatten
      cask_tokens.map { |c|
        # => "/usr/local/Library/Taps/caskroom/example-tap/Casks/example.rb"
        c.sub!(/\.rb$/, '')
        # => ".../example"
        c = c.split('/').last 4
        # => ["caskroom", "example-tap", "Casks", "example"]
        c.delete_at(-2)
        # => ["example-tap", "example"]
        c = c.join '/'
      }
    end

    def installed
      installed_cask_dirs = Pathname.glob(caskroom.join("*"))
      # Cask.load has some DWIM which is slow.  Optimize here
      # by spoon-feeding Cask.load fully-qualified paths.
      # todo: speed up Cask::Source::Tapped (main perf drag is calling Cask.all_tokens repeatedly)
      # todo: ability to specify expected source when calling Cask.load (minor perf benefit)
      installed_cask_dirs.map do |install_dir|
        cask_token = install_dir.basename.to_s
        path_to_cask = all_tapped_cask_dirs.find do |tap_dir|
          tap_dir.join("#{cask_token}.rb").exist?
        end
        if path_to_cask
          Cask.load(path_to_cask.join("#{cask_token}.rb"))
        else
          Cask.load(cask_token)
        end
      end
    end
  end
end
