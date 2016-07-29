module Kernel
  alias real_at_exit at_exit

  def at_exit(&block)
    real_at_exit(&block) unless ENV["DISABLE_AT_EXIT"]
  end

  def with_disabled_at_exit
    ENV["DISABLE_AT_EXIT"] = "1"
    yield
    ENV.delete("DISABLE_AT_EXIT")
  end
end
