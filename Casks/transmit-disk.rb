cask 'transmit-disk' do
  version '4.4.12'
  sha256 '3a4e3515450e597fc7f0d75f0d53df215bea3b6d9615c0a960f471b1185602ef'

  url "https://download.panic.com/transmit/Transmit%20Disk%20#{version}.pkg.zip"
  name 'transmit-disk'
  homepage 'https://panic.com/transmit/'

  depends_on cask: 'transmit'

  pkg "Transmit Disk #{version}.pkg",
      choices: [
                 {
                   'choiceIdentifier' => 'com.panic.TransmitDisk.pkg',
                   'choiceAttribute'  => 'visible',
                   'attributeSetting' => false,
                 },
                 {
                   'choiceIdentifier' => 'com.panic.TransmitDisk.pkg',
                   'choiceAttribute'  => 'enabled',
                   'attributeSetting' => true,
                 },
                 {
                   'choiceIdentifier' => 'com.panic.TransmitDisk.pkg',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 # FIXME: Puts .app in correct place but fails package validation
                 # {
                 #   'choiceIdentifier' => 'com.panic.TransmitDisk.pkg',
                 #   'choiceAttribute'  => 'customLocation',
                 #   'attributeSetting' => '/Applications',
                 # },
               ]

  postflight do
    system_command 'mv',
                   args: [
                           '/tmp/Transmit/Transmit Disk.app',
                           '/Applications/',
                         ],
                   sudo: true
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
            trash:   '/Applications/Transmit Disk.app'

  zap delete: [
                '~/Library/Preferences/com.panic.Transmit.TransmitDisk.plist',
                '/Library/Filesystems/transmitdisk.fs/',
                '/Applications/Transmit Disk.app',
              ]
end
