cask 'tuxera-ntfs' do
  version '2018'
  sha256 '84af4075f0ceaf42040928447d9f77240e4c3ae4359837e113cf35115400a19a'

  url "https://www.tuxera.com/mac/tuxerantfs_#{version}.dmg"
  name 'Tuxera NTFS'
  homepage 'https://www.tuxera.com/products/tuxera-ntfs-for-mac/'

  pkg '.packages/Flat/Install Tuxera NTFS.mpkg'

  uninstall pkgutil: [
                       'com.tuxera.pkg.Tuxera_NTFS',
                       'com.tuxera.pkg.Tuxera_NTFS_compat',
                     ]
end
