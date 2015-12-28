class Hbc::DSL::Version < ::String
  DIVIDERS = %w[. - _ /]

  PLURAL_DIVIDER_NAMES = {
    '.' => :dots,
    '-' => :hyphens,
    '_' => :underscores,
    '/' => :slashes
  }

  DIVIDER_REGEX = /(#{DIVIDERS.map { |v| Regexp.quote(v) }.join('|')})/

  MAJOR_MINOR_PATCH_REGEX = /^(\d+)(?:\.(\d+)(?:\.(\d+))?)?/

  def self.define_divider_deletion_method(divider)
    plural_divider_name = PLURAL_DIVIDER_NAMES[divider]
    method_name = "no_#{plural_divider_name}"
    define_method(method_name) do
      version { delete(divider) }
    end
  end

  def self.define_divider_conversion_methods(left_divider)
    (DIVIDERS - [left_divider]).each do |right_divider|
      plural_left_divider_name = PLURAL_DIVIDER_NAMES[left_divider]
      plural_right_divider_name = PLURAL_DIVIDER_NAMES[right_divider]
      method_name =
        "#{plural_left_divider_name}_to_#{plural_right_divider_name}"
      define_method(method_name) do
        version { gsub(left_divider, right_divider) }
      end
    end
  end

  DIVIDERS.each do |divider|
    define_divider_deletion_method(divider)
    define_divider_conversion_methods(divider)
  end

  attr_reader :raw_version

  def initialize(raw_version)
    @raw_version = raw_version
    super(raw_version.to_s)
  end

  def latest?
    to_s == 'latest'
  end

  def major
    version { slice(MAJOR_MINOR_PATCH_REGEX, 1) }
  end

  def minor
    version { slice(MAJOR_MINOR_PATCH_REGEX, 2) }
  end

  def patch
    version { slice(MAJOR_MINOR_PATCH_REGEX, 3) }
  end

  def major_minor
    version { [major, minor].reject(&:empty?).join('.') }
  end

  def major_minor_patch
    version { [major, minor, patch].reject(&:empty?).join('.') }
  end

  def before_slash
    version { split('/', 2)[0] }
  end

  def after_slash
    version { split('/', 2)[1] }
  end

  def no_dividers
    version { gsub(DIVIDER_REGEX, '') }
  end

  private

  def version(&block)
    return self if empty? || latest?
    self.class.new(block.call)
  end
end
