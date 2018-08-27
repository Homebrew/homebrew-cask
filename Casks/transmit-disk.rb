cask 'transmit-disk' do
  version '4.4.13'
  sha256 'e1a8a1c7ca874b1126c023b22435ded74a4f8af168d487dd1cbac0c0a770a515'

  url "https://download.panic.com/transmit/Transmit%20Disk%20#{version}.pkg.zip"
  name 'transmit-disk'
  homepage 'https://panic.com/transmit/'

  pkg "Transmit Disk #{version}.pkg"

  postflight do
    set_ownership '/tmp/Transmit'
    FileUtils.mv '/tmp/Transmit/Transmit Disk.app', appdir
  end

  uninstall quit:    [
                       'com.panic.Transmit',
                       'com.panic.Transmit.TransmitDisk',
                       'com.panic.Transmit.TransmitMenu',
                     ],
            pkgutil: [
                       'com.panic.TransmitDisk.pkg',
                       'com.panic.TransmitDisk.filesystem.tdfuse.pkg',
                     ],
            delete:  "#{appdir}/Transmit Disk.app"

  zap trash: [
               '~/Library/Preferences/com.panic.Transmit.TransmitDisk.plist',
               '/Library/Filesystems/transmitdisk.fs/',
             ]
end
