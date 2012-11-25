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
    CANNED_APPDIR.rm_rf
  end
end

class MiniTest::Spec
  include FakeFetcherHooks
end
