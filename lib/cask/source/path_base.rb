require 'rubygems'

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

      # transitional hack: convert first lines of the new form
      #
      #     cask :v1 => 'google-chrome' do
      #
      # to the old form
      #
      #     class GoogleChrome < Cask
      #
      # limitation: does not support Ruby extended quoting such as %Q{}
      #
      # todo: in the future, this can be pared down to an "eval"

      # read Cask
      cask_contents = File.open(path, 'rb') do |handle|
        contents = handle.read
        if defined?(Encoding)
          contents.force_encoding('UTF-8')
        else
          contents
        end
      end

      # munge text
      cask_contents.sub!(%r{\A(\s*\#[^\n]*\n)+}, '');
      if %r{\A\s*cask\s+:v([\d_]+)(test)?\s+=>\s+([\'\"])(\S+?)\3(?:\s*,\s*|\s+)do\s*\n}.match(cask_contents)
        dsl_version_string = $1
        is_test = ! $2.nil?
        header_token = $4
        dsl_version = Gem::Version.new(dsl_version_string.gsub('_','.'))
        superclass_name = is_test ? 'TestCask' : 'Cask'
        cask_contents.sub!(%r{\A[^\n]+\n}, "class #{cask_class_name} < #{superclass_name}\n")
        # todo the minimum DSL version should be defined globally elsewhere
        minimum_dsl_version = Gem::Version.new('1.0')
        unless dsl_version >= minimum_dsl_version
          raise CaskInvalidError.new(cask_token, "Bad header line: 'v#{dsl_version_string}' is less than required minimum version '#{minimum_dsl_version}'")
        end
        if header_token != cask_token
          raise CaskInvalidError.new(cask_token, "Bad header line: '#{header_token}' does not match file name")
        end
      else
        raise CaskInvalidError.new(cask_token, "Bad header line: parse failed")
      end

      # simulate "require"
      begin
        Object.const_get(cask_class_name)
      rescue NameError
        eval(cask_contents, TOPLEVEL_BINDING)
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

  def cask_token
    path.basename.to_s.sub(/\.rb/, '')
  end

  def cask_class_name
    cask_token.split('-').map(&:capitalize).join
  end

  def to_s
    # stringify to fully-resolved location
    path.to_s
  end
end
