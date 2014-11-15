class Cask::DSL::License

  # a generic category can always be given as a license, so
  # category names should be given as both key and value
  VALID_LICENSES = {
                    # license         category
                    :unknown       => :unknown,

                    :other         => :other,

                    :closed        => :closed,
                    :commercial    => :closed,
                    :gratis        => :closed,
                    :abandoned     => :closed,  # undocumented, should not be used yet
                    :freemium      => :closed,  # undocumented, should not be used yet
                    :trial         => :closed,  # undocumented, should not be used yet

                    :oss           => :oss,
                    :affero        => :oss,
                    :apache        => :oss,
                    :arphic        => :oss,
                    :artistic      => :oss,
                    :bsd           => :oss,
                    :cc            => :oss,
                    :eclipse       => :oss,
                    :gpl           => :oss,
                    :isc           => :oss,
                    :lppl          => :oss,
                    :ncsa          => :oss,
                    :mit           => :oss,
                    :mpl           => :oss,
                    :ofl           => :oss,
                    :public_domain => :oss,
                    :ubuntu_font   => :oss,
                    :x11           => :oss,
                   }

  DEFAULT_LICENSE = :unknown
  DEFAULT_CATEGORY = VALID_LICENSES[DEFAULT_LICENSE]

  attr_reader :value

  def self.check_constants
    categories = Set.new(VALID_LICENSES.values)
    categories.each do |cat|
      next if VALID_LICENSES.key?(cat)
      raise "license category is not a value: '#{@cat.inspect}'"
    end
  end

  def self.category(_license)
    VALID_LICENSES.fetch(_license, DEFAULT_CATEGORY)
  end

  def initialize(arg)
    @value = arg
    @value = DEFAULT_LICENSE if @value.nil?
    unless VALID_LICENSES.key?(@value)
      raise "invalid license value: '#{@value.inspect}'"
    end
  end

  def category
    self.class.category(@value)
  end

  def to_s
    @value.inspect
  end
end
