module Kernel
  alias_method :real_at_exit, :at_exit

  def at_exit(&block)
    unless ENV['DISABLE_AT_EXIT']
      real_at_exit(&block)
    end
  end

  def with_disabled_at_exit(&block)
    ENV['DISABLE_AT_EXIT'] = '1'
    yield
    ENV.delete('DISABLE_AT_EXIT')
  end
end
