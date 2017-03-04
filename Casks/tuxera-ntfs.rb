cask 'tuxera-ntfs' do
  version '2016.1'
  sha256 'd957b207b13b705f9ef5e4f54942af0b41fb335219ca0833c34627ce95e968f9'

  url "https://www.tuxera.com/mac/tuxerantfs_#{version}.dmg"
  name 'Tuxera NTFS'
  homepage 'https://www.tuxera.com/products/tuxera-ntfs-for-mac/'

  pkg '.packages/Flat/Install Tuxera NTFS.mpkg'

  uninstall pkgutil: [
                       'com.tuxera.pkg.Tuxera_NTFS',
                       'com.tuxera.pkg.Tuxera_NTFS_compat',
                     ]
end
