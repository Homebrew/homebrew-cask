class Hash
  def assert_valid_keys(*valid_keys)
    unknown_keys = self.keys - valid_keys
    unless unknown_keys.empty?
      raise Hbc::CaskError.new %Q{Unknown keys: #{unknown_keys.inspect}. Running "#{UPDATE_CMD}" will likely fix it.}
    end
  end
end
