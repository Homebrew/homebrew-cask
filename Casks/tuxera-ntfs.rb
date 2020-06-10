cask 'tuxera-ntfs' do
  version '2019'
  sha256 'ac655a302afbbe2022ec9c2af3df65e8bcd1bb66a783770025f78f3595a2798f'

  url "https://download.tuxera.com/mac/tuxerantfs_#{version}.dmg"
  appcast 'https://www.tuxera.com/products/tuxera-ntfs-for-mac/download/'
  name 'Tuxera NTFS'
  homepage 'https://www.tuxera.com/products/tuxera-ntfs-for-mac/'

  pkg '.packages/Flat/Install Tuxera NTFS.mpkg'

  uninstall quit:    'com.tuxera.Tuxera-NTFS',
            pkgutil: [
                       'com.tuxera.pkg.Tuxera_NTFS',
                       'com.tuxera.pkg.Tuxera_NTFS_compat',
                     ]
end
