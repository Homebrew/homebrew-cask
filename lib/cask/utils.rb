require 'cask/utils/tty'
require 'yaml'
require 'open3'
require 'stringio'

UPDATE_CMD = "brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup"
ISSUES_URL = "https://github.com/caskroom/homebrew-cask/issues"

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

def ohai(title, *sput)
  title = Tty.truncate(title) if $stdout.tty? && !Cask.verbose
  puts "#{Tty.blue.bold}==>#{Tty.white} #{title}#{Tty.reset}"
  puts sput unless sput.empty?
end

def opoo(warning)
  $stderr.puts "#{Tty.red.underline}Warning#{Tty.reset}: #{warning}"
end

def onoe(error)
  $stderr.puts "#{Tty.red.underline}Error#{Tty.reset}: #{error}"
end

def odebug(title, *sput)
  if Cask.respond_to?(:debug) and Cask.debug
    width = Tty.width * 4 - 6
    if $stdout.tty? and title.to_s.length > width
      title = title.to_s[0, width - 3] + '...'
    end
    puts "#{Tty.magenta.bold}==>#{Tty.white} #{title}#{Tty.reset}"
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
       :sha256,
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

  # from Homebrew
  # children.length == 0 is slow to enumerate the whole directory just
  # to see if it is empty
  def self.rmdir_if_possible(dir)
    dirpath = Pathname(dir)
    begin
      dirpath.rmdir
      true
    rescue Errno::ENOTEMPTY
      if (ds_store = dirpath.join('.DS_Store')).exist? and
        dirpath.children.length == 1
        ds_store.unlink
        retry
      else
        false
      end
    rescue Errno::EACCES, Errno::ENOENT
      false
    end
  end

  # our own version of Homebrew's abv, with better defenses
  # against unusual filenames
  def self.cabv(dir)
    output = ''
    count = Cask::SystemCommand.run!('/usr/bin/find',
                                     :args => [dir, *%w[-type f -not -name .DS_Store -print0]],
                                     :print_stderr => false).stdout.count("\000")
    size = Cask::SystemCommand.run!('/usr/bin/du',
                                    :args => ['-hs', '--', dir],
                                    :print_stderr => false).stdout.split("\t").first.strip
    output << "#{count} files, " if count > 1
    output << size
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

  def self.error_message_with_suggestions
    <<-EOS.undent
    #{ Tty.reset.white.bold }
      Most likely, this means you have an outdated version of homebrew-cask.#{
      } Please run:

          #{ Tty.green.normal }#{ UPDATE_CMD }

      #{ Tty.white.bold }If this doesn’t fix the problem, please report this bug:

          #{ Tty.underline }#{ ISSUES_URL }#{ Tty.reset }

    EOS
  end

  def self.method_missing_message(method, token, section=nil)
    poo = []
    poo << "Unexpected method '#{method}' called"
    poo << "during #{section}" if section
    poo << "on Cask #{token}."

    opoo(poo.join(' ') + "\n" + error_message_with_suggestions)
  end
end
