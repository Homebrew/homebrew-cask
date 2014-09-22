class Cask::Source::PathBase

  # derived classes must define method self.me?

  def self.path_for_query(query)
    path_string = "#{query}"
    path_string.concat('.rb') unless path_string.match(%r{\.rb\Z}i)
    Pathname.new(path_string)
  end

  attr_reader :path

  def initialize(path)
    @path = Pathname(path).expand_path
  end

  def load
    raise CaskError.new "File '#{path}' does not exist"      unless path.exist?
    raise CaskError.new "File '#{path}' is not readable"     unless path.readable?
    raise CaskError.new "File '#{path}' is not a plain file" unless path.file?
    begin

      # forward compatibility hack: convert first lines of the new form
      #
      #     cask :v1 => 'google-chrome' do
      #
      # to the old form
      #
      #     class GoogleChrome < Cask
      #
      # limitation: does not support Ruby extended quoting such as %Q{}
      #
      # in the future, this can be pared down to an "eval"

      # read Cask
      cask_string = File.open(path, 'rb') do |handle|
        contents = handle.read
        if defined?(Encoding)
          contents.force_encoding('UTF-8')
        else
          contents
        end
      end

      # munge text
      cask_string.sub!(%r{\A(\s*\#[^\n]*\n)+}, '');
      if %r{\A\s*cask\s+:v[\d_]+\s+=>\s+([\'\"])(\S+?)\1(?:\s*,\s*|\s+)do\s*\n}.match(cask_string)
        cask_string.sub!(%r{\A[^\n]+\n}, "class #{cask_class_name} < Cask\n")
      end

      # simulate "require"
      begin
        Object.const_get(cask_class_name)
      rescue NameError
        eval(cask_string, TOPLEVEL_BINDING)
      end

    rescue CaskError, StandardError, ScriptError => e
      # bug: e.message.concat doesn't work with CaskError exceptions
      e.message.concat(" while loading '#{path}'")
      raise e
    end
    begin
      Object.const_get(cask_class_name).new
    rescue CaskError, StandardError, ScriptError => e
      # bug: e.message.concat doesn't work with CaskError exceptions
      e.message.concat(" while instantiating '#{cask_class_name}' from '#{path}'")
      raise e
    end
  end

  def cask_class_name
    path.basename.to_s.sub(/\.rb/, '').split('-').map(&:capitalize).join
  end

  def to_s
    # stringify to fully-resolved location
    path.to_s
  end
end
