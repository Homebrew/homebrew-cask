# wire in a set of fake link dirs per-test
module FakeDirHooks
  DIRS = [:appdir, :qlplugindir]

  def before_setup
    super

    @canned_dirs = {}

    DIRS.each do |dir_name|
      dir = HOMEBREW_REPOSITORY/"#{dir_name}-#{Time.now.to_i}-#{rand(1024)}"
      dir.mkpath
      Cask.send("#{dir_name}=", dir)
      @canned_dirs[:dir_name] = dir
    end
  end

  def after_teardown
    super

    @canned_dirs.each_value do |dir|
      dir.rmtree if dir.exist?
    end
  end
end

class MiniTest::Spec
  include FakeDirHooks
end
