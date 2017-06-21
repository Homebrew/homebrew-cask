cask 'transmit-disk' do
  version '4.4.12'
  sha256 '3a4e3515450e597fc7f0d75f0d53df215bea3b6d9615c0a960f471b1185602ef'

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
