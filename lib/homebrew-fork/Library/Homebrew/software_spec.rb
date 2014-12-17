require 'forwardable'
require 'resource'
require 'checksum'
require 'version'
require 'options'
require 'build_options'
require 'compilers'

class SoftwareSpec
  extend Forwardable

  PREDEFINED_OPTIONS = {
    :universal => Option.new("universal", "Build a universal binary"),
    :cxx11     => Option.new("c++11", "Build using C++11 mode"),
    "32-bit"   => Option.new("32-bit", "Build 32-bit only"),
  }

  attr_reader :name, :owner
  attr_reader :build, :resources, :options
  attr_reader :compiler_failures

  def_delegators :@resource, :stage, :fetch, :verify_download_integrity
  def_delegators :@resource, :cached_download, :clear_cache
  def_delegators :@resource, :checksum, :mirrors, :specs, :using
  def_delegators :@resource, :version, :mirror, *Checksum::TYPES

  def initialize
    @resource = Resource.new
    @resources = {}
    @bottle_specification = nil
    @options = Options.new
    @build = BuildOptions.new(Options.create(ARGV.flags_only), options)
    @compiler_failures = []
  end

  def owner= owner
    @name = owner.name
    @owner = owner
    @resource.owner = self
    resources.each_value do |r|
      r.owner     = self
      r.version ||= version
    end
  end

  def url val=nil, specs={}
    return @resource.url if val.nil?
    @resource.url(val, specs)
  end

  def resource_defined? name
    resources.has_key?(name)
  end

  def resource name, klass=Resource, &block
    if block_given?
      raise DuplicateResourceError.new(name) if resource_defined?(name)
      res = klass.new(name, &block)
      resources[name] = res
    else
      resources.fetch(name) { raise ResourceMissingError.new(owner, name) }
    end
  end

  def option_defined?(name)
    options.include?(name)
  end

  def option(name, description="")
    opt = PREDEFINED_OPTIONS.fetch(name) do
      if Symbol === name
        opoo "Passing arbitrary symbols to `option` is deprecated: #{name.inspect}"
        puts "Symbols are reserved for future use, please pass a string instead"
        name = name.to_s
      end
      raise ArgumentError, "option name is required" if name.empty?
      raise ArgumentError, "option name must be longer than one character" unless name.length > 1
      raise ArgumentError, "option name must not start with dashes" if name.start_with?("-")
      Option.new(name, description)
    end
    options << opt
  end

  def fails_with compiler, &block
    compiler_failures << CompilerFailure.create(compiler, &block)
  end

  def needs *standards
    standards.each do |standard|
      compiler_failures.concat CompilerFailure.for_standard(standard)
    end
  end

  def add_dep_option(dep)
    name = dep.option_name

    if dep.optional? && !option_defined?("with-#{name}")
      options << Option.new("with-#{name}", "Build with #{name} support")
    elsif dep.recommended? && !option_defined?("without-#{name}")
      options << Option.new("without-#{name}", "Build without #{name} support")
    end
  end
end

class HeadSoftwareSpec < SoftwareSpec
  def initialize
    super
    @resource.version = Version.new('HEAD')
  end

  def verify_download_integrity fn
    return
  end
end
