cask 'wingfs' do
  version '2.0.81'
  sha256 '1e982efc23f718ab0da48dc60b660fd0e41a5a79749ae31651e1e318cbc9b58d'

  # s3.amazonaws.com/wingfs_downloads was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/wingfs_downloads/WingFS_#{version.major_minor}.dmg"
  name 'WingFS'
  homepage 'http://www.wingfs.com/products/wingfs'

  pkg 'WingFS.pkg', allow_untrusted: true

  uninstall pkgutil: 'com.archiware.WingFS'
end
