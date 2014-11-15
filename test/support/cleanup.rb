module Cask::CleanupHooks
  def after_teardown
    super
    Cask.installed.each do |cask|
      Cask::Installer.new(cask).tap do |installer|
        installer.purge_versioned_files
      end
    end
  end
end

class MiniTest::Spec
  include Cask::CleanupHooks
end
