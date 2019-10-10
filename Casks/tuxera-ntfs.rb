cask 'tuxera-ntfs' do
  version '2019'
  sha256 '4add8c6035826033e07d444fab58c15228b3af7680fb70501e2e9e3091d7a790'

  url "https://download.tuxera.com/mac/tuxerantfs_#{version}.dmg"
  appcast 'https://www.tuxera.com/products/tuxera-ntfs-for-mac/download/'
  name 'Tuxera NTFS'
  homepage 'https://www.tuxera.com/products/tuxera-ntfs-for-mac/'

  pkg '.packages/Flat/Install Tuxera NTFS.mpkg'

  uninstall pkgutil: [
                       'com.tuxera.pkg.Tuxera_NTFS',
                       'com.tuxera.pkg.Tuxera_NTFS_compat',
                     ]
end
