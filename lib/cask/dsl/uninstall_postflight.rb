class Cask::DSL::UninstallPostflight < Cask::DSL::Base
  def method_missing(method, *args)
    Cask::Utils.method_missing_message(method, @cask.to_s, 'uninstall_postflight')
    return nil
  end
end
