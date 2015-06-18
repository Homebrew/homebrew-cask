module Hbc::CleanupHooks
  def after_teardown
    super
    Hbc.installed.each do |cask|
      Hbc::Installer.new(cask).tap do |installer|
        installer.purge_versioned_files
      end
    end
  end
end

class MiniTest::Spec
  include Hbc::CleanupHooks
end
