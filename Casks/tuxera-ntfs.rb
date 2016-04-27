cask 'tuxera-ntfs' do
  version '2015.3'
  sha256 'a263f405f8f3a7950e6c29e8d0ac511823a8b2e58f76211190ec179fbd62947a'

  url "https://www.tuxera.com/mac/tuxerantfs_#{version}.dmg"
  name 'Tuxera NTFS'
  homepage 'https://www.tuxera.com/products/tuxera-ntfs-for-mac/'
  license :closed

  pkg '.packages/Flat/Install Tuxera NTFS.mpkg'

  uninstall pkgutil: [
                       'com.tuxera.pkg.Tuxera_NTFS',
                       'com.tuxera.pkg.Tuxera_NTFS_compat',
                     ]
end
