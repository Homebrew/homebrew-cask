module TempEnvVarHelper
  def with_env_var(key, val, &block)
    was_defined = ENV.key? 'key'
    old_value = ENV['key']
    ENV[key] = val
    block.call
  ensure
    if was_defined
      ENV[key] = old_value
    else
      ENV.delete(key)
    end
  end
end
