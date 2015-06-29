cask :v1 => 'tuxera-ntfs' do
  version '2014'
  sha256 '808423a1246a3a9cfa03d4ada3b10cd7958e88dbb34bb0c044741d3266202514'

  url 'https://www.tuxera.com/mac/tuxerantfs_2014.dmg'
  name 'Tuxera NTFS'
  homepage 'https://www.tuxera.com/products/tuxera-ntfs-for-mac/'
  license :closed

  pkg '.packages/Flat/Install Tuxera NTFS.mpkg'

  uninstall :script => '/System/Library/Filesystems/fusefs_txantfs.fs/Support/uninstall-package.sh'
end
