class Cask::DSL::Preflight < Cask::DSL::Base
  def method_missing(method, *args)
    Cask::Utils.method_missing_message(method, @cask.to_s, 'preflight')
    return nil
  end
end
