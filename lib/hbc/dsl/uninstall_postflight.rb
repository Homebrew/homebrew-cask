class Hbc::DSL::UninstallPostflight < Hbc::DSL::Base
  def method_missing(method, *args)
    Hbc::Utils.method_missing_message(method, @cask.to_s, 'uninstall_postflight')
    return nil
  end
end
