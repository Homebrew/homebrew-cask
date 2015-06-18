require 'pathname'

class Pathname
  # https://bugs.ruby-lang.org/issues/9915
  if RUBY_VERSION == "2.0.0"
    prepend Module.new {
      def inspect
        super.force_encoding(@path.encoding)
      end
    }
  end
end
