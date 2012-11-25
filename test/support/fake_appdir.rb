# wire in a fake appdir for linkapps
CANNED_APPDIR = (HOMEBREW_REPOSITORY/"Applications")
Cask.set_appdir(CANNED_APPDIR)

module FakeAppdirHooks
  def before_setup
    super
    CANNED_APPDIR.mkdir
  end

  def after_teardown
    super
    FileUtils.rm_rf(CANNED_APPDIR)
  end
end

class MiniTest::Spec
  include FakeAppdirHooks
end
