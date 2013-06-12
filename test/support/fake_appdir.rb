# wire in a fake appdir per-test
module FakeAppdirHooks
  def before_setup
    super
    @canned_appdir = HOMEBREW_REPOSITORY/"Applications-#{Time.now.to_i}-#{rand(1024)}"
    @canned_appdir.mkpath
    Cask.appdir = @canned_appdir
  end

  def after_teardown
    super
    @canned_appdir.rmtree if @canned_appdir.exist?
  end
end

class MiniTest::Spec
  include FakeAppdirHooks
end
