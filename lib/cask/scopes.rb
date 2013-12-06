module Cask::Scopes
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def all
      all_titles.map { |c| self.load c }
    end

    def all_titles
      cask_titles = Dir[tapspath.join("*", "Casks", "*.rb")]
      cask_titles.map { |c|
        # => "/usr/local/Library/Taps/example-tap/Casks/example.rb"
        c.sub!(/\.rb$/, '')
        # => ".../example"
        c = c.split("/").last 3
        # => ["example-tap", "Casks", "example"]
        c.delete_at 1
        # => ["example-tap", "example"]
        c = c.join "/"
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
