cask 'wingfs' do
  version '2.0.82'
  sha256 'a9335af21fff081c2114a6f7cd0f9c53cd207d5c4e6f881d5cb31c6d8e46d639'

  # s3.amazonaws.com/wingfs_downloads was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/wingfs_downloads/WingFS_#{version.major_minor}.dmg"
  name 'WingFS'
  homepage 'http://www.wingfs.com/products/wingfs'

  pkg 'WingFS.pkg', allow_untrusted: true

  uninstall pkgutil: 'com.archiware.WingFS'
end
