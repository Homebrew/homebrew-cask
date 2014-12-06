class Cask::DSL::Tags

  # In the future we may want a different data structure
  # here to store limitations/validations on tag values.
  # So far, we only check the keys.
  VALID_TAGS = Set.new [
                        :vendor
                       ]

  attr_accessor *VALID_TAGS
  attr_accessor :pairs

  def initialize(pairs={})
    @pairs = pairs
    @pairs.each do |key, value|
      raise "invalid tags key: '#{key.inspect}'" unless VALID_TAGS.include?(key)
      writer_method = "#{key}=".to_sym
      send(writer_method, value)
    end
  end

  def to_yaml
    @pairs.to_yaml
  end

  def to_s
    @pairs.inspect
  end
end
