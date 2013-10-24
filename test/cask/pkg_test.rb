require 'test_helper'

describe Cask::Pkg do
  describe 'uninstall' do
    it 'removes files and dirs referenced by the pkg' do
      pkg = Cask::Pkg.new('my.fake.pkg', Cask::NeverSudoSystemCommand)

      some_files = Array.new(3) { Pathname(Tempfile.new('testfile').path) }
      pkg.stubs(:files).returns some_files

      some_dirs = Array.new(3) { Pathname(Dir.mktmpdir) }
      pkg.stubs(:dirs).returns some_dirs

      pkg.stubs(:forget)

      pkg.uninstall

      some_files.each { |file| file.wont_be :exist? }
      some_dirs.each  { |dir| dir.wont_be :exist? }
    end

    it 'forgets the pkg' do
      pkg = Cask::Pkg.new('my.fake.pkg', Cask::FakeSystemCommand)

      pkg.stubs(:files).returns([])
      pkg.stubs(:dirs).returns([])

      Cask::FakeSystemCommand.expects_command(
        %q(sudo -E 'pkgutil' '--forget' 'my.fake.pkg' 2>&1)
      )

      pkg.uninstall
    end

    it 'cleans broken symlinks, but leaves AOK symlinks' do
      pkg = Cask::Pkg.new('my.fake.pkg', Cask::NeverSudoSystemCommand)

      fake_dir  = Pathname(Dir.mktmpdir)
      fake_file = fake_dir.join('ima_file').tap { |path| FileUtils.touch(path) }

      intact_symlink = fake_dir.join('intact_symlink').tap { |path| path.make_symlink(fake_file) }
      broken_symlink = fake_dir.join('broken_symlink').tap { |path| path.make_symlink('im_nota_file') }

      pkg.stubs(:files).returns([])
      pkg.stubs(:dirs).returns([fake_dir])
      pkg.stubs(:forget)

      pkg.uninstall

      intact_symlink.must_be :exist?
      broken_symlink.wont_be :exist?
      fake_dir.must_be :exist?
    end

    it 'snags permissions on ornery dirs, but returns them afterwords' do
      pkg = Cask::Pkg.new('my.fake.pkg', Cask::NeverSudoSystemCommand)

      fake_dir  = Pathname(Dir.mktmpdir)

      fake_file = fake_dir.join('ima_installed_file').tap { |path| FileUtils.touch(path) }
      other_file = fake_dir.join('ima_other_file').tap { |path| FileUtils.touch(path) }

      fake_dir.chmod(0000)

      pkg.stubs(:files).returns([fake_file])
      pkg.stubs(:dirs).returns([fake_dir])
      pkg.stubs(:forget)

      pkg.uninstall

      fake_dir.must_be :directory?
      fake_file.wont_be :file?
      (fake_dir.stat.mode % 01000).to_s(8).must_equal '0'
    end
  end
end
