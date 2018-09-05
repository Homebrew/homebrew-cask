cask 'wingfs' do
  version '2.0.84'
  sha256 '94e5a5eee89695caa487d183b8c40ade98dbeaedad6891da3c95684084d303a2'

  # s3.amazonaws.com/wingfs_downloads was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/wingfs_downloads/WingFS_#{version.major_minor}.dmg"
  name 'WingFS'
  homepage 'http://p5.archiware.com/products/wingfs'

  conflicts_with cask: 'osxfuse'

  pkg 'WingFS.pkg'

  uninstall kext:      'com.github.osxfuse.filesystems.osxfuse',
            launchctl: 'com.github.osxfuse.filesystems.osxfusefs',
            pkgutil:   [
                         'com.archiware.WingFS',
                         'com.github.osxfuse.pkg',
                       ]
end
