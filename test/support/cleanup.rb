module Cask::CleanupHooks
  def after_teardown
    super
    Cask.all.select(&:installed?).each { |c| Cask::Installer.new(c).uninstall }
  end
end

class MiniTest::Spec
  include Cask::CleanupHooks
end
