cask 'tuxera-ntfs' do
  version '2018'
  sha256 '73b8c1e7a19ae2f98aeb4f72d8d5f7ea2a81f07b2f2a49a5106ea0581756d9ac'

  url "https://download.tuxera.com/mac/tuxerantfs_#{version}.dmg"
  name 'Tuxera NTFS'
  homepage 'https://www.tuxera.com/products/tuxera-ntfs-for-mac/'

  pkg '.packages/Flat/Install Tuxera NTFS.mpkg'

  uninstall pkgutil: [
                       'com.tuxera.pkg.Tuxera_NTFS',
                       'com.tuxera.pkg.Tuxera_NTFS_compat',
                     ]
end
