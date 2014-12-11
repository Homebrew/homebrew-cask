
# see Homebrew Library/Homebrew/utils.rb

require 'yaml'
require 'open3'
require 'stringio'

# monkeypatch Object - not a great idea
class Object
  def utf8_inspect
    if not defined?(Encoding)
      self.inspect
    else
      if self.respond_to?(:map)
        self.map do |sub_elt|
          sub_elt.utf8_inspect
        end
      else
        self.inspect.force_encoding('UTF-8').sub(%r{\A"(.*)"\Z}, '\1')
      end
    end
  end
end

# monkeypatch MacOS
module MacOS
  def release
    version
  end
end

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
      raise CaskError.new %Q{Unknown keys: #{unknown_keys.inspect}. Running "brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup" will likely fix it.}
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
                                 :print_stderr => false).stdout.count("\n")
    out << "#{n} files, " if n > 1
    out << Cask::SystemCommand.run!('/usr/bin/du',
                                    :args => ['-hs', '--', self.to_s],
                                    :print_stderr => false).stdout.split("\t").first.strip
  end
end

class Buffer < StringIO
  def initialize(tty = false)
    super()
    @tty = tty
  end

  def tty?
    @tty
  end
end

# global methods

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

module Cask::Utils
  def dumpcask
    if Cask.respond_to?(:debug) and Cask.debug
      odebug "Cask instance dumps in YAML:"
      odebug "Cask instance toplevel:", self.to_yaml
      [
       :full_name,
       :homepage,
       :url,
       :appcast,
       :version,
       :license,
       :tags,
       :sums,
       :artifacts,
       :caveats,
       :depends_on,
       :conflicts_with,
       :container,
       :gpg,
       :accessibility_access,
      ].each do |method|
        printable_method = method.to_s
        printable_method = "name" if printable_method == "full_name"
        odebug "Cask instance method '#{printable_method}':", self.send(method).to_yaml
      end
    end
  end

  # from Homebrew puts_columns
  def self.stringify_columns items, star_items=[]
    return if items.empty?

    if star_items && star_items.any?
      items = items.map{|item| star_items.include?(item) ? "#{item}*" : item}
    end

    if $stdout.tty?
      # determine the best width to display for different console sizes
      console_width = Cask::SystemCommand.run("/bin/stty", :args => ["size"]).stdout.chomp.split(" ").last.to_i
      console_width = 80 if console_width <= 0
    else
      console_width = 80
    end
    longest = items.sort_by { |item| item.length }.last
    optimal_col_width = (console_width.to_f / (longest.length + 2).to_f).floor
    cols = optimal_col_width > 1 ? optimal_col_width : 1
    Open3.popen3('/usr/bin/pr', "-#{cols}", '-t', "-w#{console_width}") do |stdin, stdout, stderr|
      stdin.puts(items)
      stdin.close
      stdout.read
    end
  end

  # paths that "look" descendant (textually) will still
  # return false unless both the given paths exist
  def self.file_is_descendant(file, dir)
    file = Pathname.new(file)
    dir  = Pathname.new(dir)
    return false unless file.exist? and dir.exist?
    unless dir.directory?
      onoe "Argument must be a directory: '#{dir}'"
      return false
    end
    unless file.absolute? and dir.absolute?
      onoe "Both arguments must be absolute: '#{file}', '#{dir}'"
      return false
    end
    while file.parent != file
      return true if File.identical?(file, dir)
      file = file.parent
    end
    return false
  end

  def self.method_missing_message(method, token, section=nil)
    during = section ? "during #{section} " : '';
    poo = <<-EOPOO.undent
      Unexpected method '#{method}' called #{during}on Cask #{token}.

        If you are working on #{token}, this may point to a typo. Otherwise
        it probably means this Cask is using a new feature. If that feature
        has been released, running

          brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup

        should fix it. Otherwise you should wait to use #{token} until the
        new feature is released.
    EOPOO
    poo.split("\n").each { |line| opoo line }
  end
end
