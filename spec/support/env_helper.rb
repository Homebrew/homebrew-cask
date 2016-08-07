module EnvHelper
  class << self
    def with_env_var(key, val)
      was_defined = ENV.key? "key"
      old_value = ENV["key"]
      ENV[key] = val
      yield
    ensure
      if was_defined
        ENV[key] = old_value
      else
        ENV.delete(key)
      end
    end
  end
end
