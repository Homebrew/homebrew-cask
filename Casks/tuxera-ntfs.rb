cask 'tuxera-ntfs' do
  version '2019'
  sha256 '03befc93c2a164e3faeede2b3de903fec6982540e7cbfae646ce4e4ec8d5c879'

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
