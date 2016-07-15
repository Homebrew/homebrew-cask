class Hash
  def assert_valid_keys(*valid_keys)
    unknown_keys = keys - valid_keys
    return if unknown_keys.empty?
    raise Hbc::CaskError, %Q{Unknown keys: #{unknown_keys.inspect}. Running "#{UPDATE_CMD}" will likely fix it.}
  end
end
