# originally from Homebrew utils.rb

class Hbc::Utils::Tty
  COLORS = {
            :black      => 0,
            :red        => 1,
            :green      => 2,
            :yellow     => 3,
            :blue       => 4,
            :magenta    => 5,
            :cyan       => 6,
            :white      => 7,
            :default    => 9,
           }
  ATTRIBUTES = {
                :reset         => 0,
                :bold          => 1,
                :dim           => 2,
                :italic        => 3,
                :underline     => 4,
                :blink         => 5,
                :inverse       => 7,
                :invisible     => 8,
                :strikethrough => 9,
                :normal        => 22,
               }

  class << self
    @@sequence = []

    COLORS.keys.each do |sym|
      define_method(sym) do
        foreground(COLORS[sym])
      end
      define_method("fg_#{sym}".to_sym) do
        foreground(COLORS[sym])
      end
      define_method("bg_#{sym}".to_sym) do
        background(COLORS[sym])
      end
    end

    ATTRIBUTES.keys.each do |sym|
      define_method(sym) do
        deferred_emit(ATTRIBUTES[sym])
      end
    end

    def width
      `/usr/bin/tput cols`.strip.to_i
    end

    def truncate(str)
      str.to_s[0, width - 4]
    end

    private

    def foreground(color)
      deferred_emit(to_foreground_code color)
    end

    def background(color)
      deferred_emit(to_background_code color)
    end

    def to_foreground_code(color)
      space = 30
      if (num = to_color_number(color))
        num = space + num if num < space
        num = space + 9   if num > space + 9
        num
      end
    end

    def to_background_code(color)
      space = 40
      if (num = to_color_number(color))
        num = space + num if num < space
        num = space + 9   if num > space + 9
        num
      end
    end

    def to_color_number(color)
      COLORS[color] or
        color.kind_of?(Integer) ? color : nil
    end

    def to_attribute_number(attribute)
      ATTRIBUTES[attribute] or
        attribute.kind_of?(Integer) ? attribute : nil
    end

    def sanitize_integer(arg)
      return arg.to_i if arg.kind_of?(Integer)
      return 0        if arg.to_s.match('^0+$')
      if arg.respond_to?(:to_i) and (int = arg.to_i) > 0
        return int
      end
      $stderr.puts "Warning: bad Tty code #{arg}"
      ATTRIBUTES[:reset]
    end

    def deferred_emit(*codes)
      @@sequence.concat Array(*codes).map{ |elt| sanitize_integer(elt) }
      return Tty
    end

    def to_s
      sequence = @@sequence
      @@sequence = []
      return '' unless $stdout.tty?
      if sequence.empty?
        $stderr.puts 'Warning: empty Tty sequence'
        sequence = [ ATTRIBUTES[:reset] ]
      end
      "#{initiate}#{sequence.join(?;)}#{terminate}"
    end

    def initiate
      "\033["
    end

    def terminate
      'm'
    end
  end
end
