cask :v1 => 'tuxera-ntfs' do
  version :latest
  sha256 :no_check

  url 'https://www.tuxera.com/mac/tuxerantfs_2015.dmg'
  name 'Tuxera NTFS'
  homepage 'https://www.tuxera.com/products/tuxera-ntfs-for-mac/'
  license :closed

  pkg '.packages/Flat/Install Tuxera NTFS.mpkg'

  uninstall :script => '/System/Library/Filesystems/fusefs_txantfs.fs/Support/uninstall-package.sh'
end
