module Cask::CleanupHooks
  def after_teardown
    super
    Cask.all.select(&:installed?).each do |cask|
      Cask::Installer.new(cask).tap do |installer|
        installer.purge_files
      end
    end
  end
end

class MiniTest::Spec
  include Cask::CleanupHooks
end
