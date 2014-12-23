# originally from Homebrew utils.rb

class Tty
  class << self
    def blue; bold 34; end
    def white; bold 39; end
    def red; underline 31; end
    def yellow; underline 33; end
    def reset; escape 0; end
    def em; underline 39; end
    def green; bold 32; end
    def gray; bold 30; end
    def magenta; color 35; end

    def width
      `/usr/bin/tput cols`.strip.to_i
    end

    def truncate(str)
      str.to_s[0, width - 4]
    end

    private

    def color n
      escape "0;#{n}"
    end
    def bold n
      escape "1;#{n}"
    end
    def underline n
      escape "4;#{n}"
    end
    def escape n
      "\033[#{n}m" if $stdout.tty?
    end
  end
end
