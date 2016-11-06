cask 'tuxera-ntfs' do
  version '2016'
  sha256 '29ae78a41fb79f8bec6f3dfd7878098300c79d24f9acda55db293c82aa235d03'

  url "https://www.tuxera.com/mac/tuxerantfs_#{version}.dmg"
  name 'Tuxera NTFS'
  homepage 'https://www.tuxera.com/products/tuxera-ntfs-for-mac/'

  pkg '.packages/Flat/Install Tuxera NTFS.mpkg'

  uninstall pkgutil: [
                       'com.tuxera.pkg.Tuxera_NTFS',
                       'com.tuxera.pkg.Tuxera_NTFS_compat',
                     ]
end
