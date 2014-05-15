module Cask::Scopes
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def all
      all_titles.map { |c| self.load c }
    end

    def all_titles
      cask_titles = Dir[tapspath.join('*', '*', 'Casks', '*.rb')].map { |d| Pathname.new(d) }
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
