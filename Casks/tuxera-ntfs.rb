cask 'tuxera-ntfs' do
  version :latest
  sha256 :no_check

  url 'https://www.tuxera.com/mac/tuxerantfs_2015.1.dmg'
  name 'Tuxera NTFS'
  homepage 'https://www.tuxera.com/products/tuxera-ntfs-for-mac/'
  license :closed

  pkg '.packages/Flat/Install Tuxera NTFS.mpkg'

  uninstall pkgutil: [
                       'com.tuxera.pkg.Tuxera_NTFS',
                       'com.tuxera.pkg.Tuxera_NTFS_compat',
                     ]
end
