require "pathname"

class Pathname
  # extended to support common double extensions
  def extname(path = to_s)
    %r{(\.(dmg|tar|cpio|pax)\.(gz|bz2|lz|xz|Z|zip))$} =~ path
    return Regexp.last_match(1) if Regexp.last_match(1)
    File.extname(path)
  end

  # https://bugs.ruby-lang.org/issues/9915
  if RUBY_VERSION == "2.0.0"
    prepend Module.new {
      def inspect
        super.force_encoding(@path.encoding)
      end
    }
  end
end
