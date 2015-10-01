cask :v1 => 'tuxera-ntfs' do
  version '2015'
  sha256 '4bed675786cbec9b8e80a0af2f12b7fda381b16978bf103458bc1011c8a24934'

  url 'https://www.tuxera.com/mac/tuxerantfs_2015.dmg'
  name 'Tuxera NTFS'
  homepage 'https://www.tuxera.com/products/tuxera-ntfs-for-mac/'
  license :closed

  pkg '.packages/Flat/Install Tuxera NTFS.mpkg'

  uninstall :script => '/System/Library/Filesystems/fusefs_txantfs.fs/Support/uninstall-package.sh'
end
