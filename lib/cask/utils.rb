
# see Homebrew Library/Homebrew/utils.rb

require 'yaml'

# monkeypatch Tty
class Tty
  class << self
    def magenta; color 35; end
  end
end

def odebug title, *sput
  if Cask.respond_to?(:debug) and Cask.debug
    width = Tty.width * 4 - 6
    if $stdout.tty? and title.to_s.length > width
      title = title.to_s[0, width - 3] + '...'
    end
    puts "#{Tty.magenta}==>#{Tty.white} #{title}#{Tty.reset}"
    puts sput unless sput.empty?
  end
end

def odumpcask cask
  if Cask.respond_to?(:debug) and Cask.debug
    odebug "Cask instance dumps in YAML:"
    odebug "Cask instance toplevel:", cask.to_yaml
    [:homepage, :url, :version, :sums, :artifacts, :caveats].each do |method|
      odebug "Cask instance method '#{method}':", cask.send(method).to_yaml
    end
  end
end
