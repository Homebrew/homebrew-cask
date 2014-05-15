module Cask::Scopes
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def all
      all_titles.map { |c| self.load c }
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

    def all_titles
      cask_titles = all_tapped_cask_dirs.map { |d| Dir.glob d.join('*.rb') }.flatten
      cask_titles.map { |c|
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
      installed_cask_dirs.map do |dir|
        Cask.load(dir.basename.to_s)
      end
    end
  end
end
