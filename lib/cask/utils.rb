
# see Homebrew Library/Homebrew/utils.rb

require 'yaml'

# monkeypatch Tty
class Tty
  class << self
    def magenta; color 35; end
  end
end

# monkeypatch Hash
class Hash
  def assert_valid_keys(*valid_keys)
    unknown_keys = self.keys - valid_keys
    unless unknown_keys.empty?
      raise "Unknown keys: #{unknown_keys.join(", :")}. Running `brew update; brew upgrade brew-cask` will likely fix it."
    end
  end
end

# monkeypatch Pathname
class Pathname
  # our own version of Homebrew's abv, with better defenses
  # against unusual filenames
  def cabv
    out=''
    n = Cask::SystemCommand.run!('/usr/bin/find',
                                 :args => [self.realpath, *%w[-type f ! -name .DS_Store]],
                                 :stderr => :silence).count("\n")
    out << "#{n} files, " if n > 1
    out << Cask::SystemCommand.run!('/usr/bin/du',
                                    :args => ['-hs', '--', self.to_s],
                                    :stderr => :silence).split("\t").first.strip
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
    [:homepage, :url, :version, :sums, :artifacts, :caveats, :depends_on_formula].each do |method|
      odebug "Cask instance method '#{method}':", cask.send(method).to_yaml
    end
  end
end
