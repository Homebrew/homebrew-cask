module Cask::Scopes
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def all
      cask_titles = Dir[tapspath.join("*", "Casks", "*.rb")]
      cask_titles.map { |c|
        # => "/usr/local/Library/Taps/example-tap/Casks/example.rb"
        c.sub! /\.rb$/, ''
        # => ".../example"
        c = c.split("/").last 3
        # => ["example-tap", "Casks", "example"]
        c.delete_at 1
        # => ["example-tap", "example"]
        c = c.join "/"
        # => "example-tap/example"
        self.load c
        c
      }
    end

    def installed
      all.select { |c| load(c).installed? }
    end
  end
end
