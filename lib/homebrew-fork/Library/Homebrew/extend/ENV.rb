require 'hardware'
require 'extend/ENV/shared'
require 'extend/ENV/std'

module EnvActivation
  def activate_extensions!
    extend(Stdenv)
  end

  def with_build_environment
    old_env = to_hash.dup
    tmp_env = to_hash.dup.extend(EnvActivation)
    tmp_env.activate_extensions!
    tmp_env.setup_build_environment
    replace(tmp_env)
    yield
  ensure
    replace(old_env)
  end
end

ENV.extend(EnvActivation)
