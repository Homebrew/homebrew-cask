cask 'whoozle-android-file-transfer' do
  version '3.7'
  sha256 '463c7ddd0828010b9b3f6b2705efc4b4986502c6b6e8e1abc2c148cc59528ee9'

  # github.com/whoozle/android-file-transfer-linux was verified as official when first introduced to the cask
  url "https://github.com/whoozle/android-file-transfer-linux/releases/download/v#{version}/AndroidFileTransferForLinux.dmg"
  appcast 'https://github.com/whoozle/android-file-transfer-linux/releases.atom'
  name 'Android File Transfer'
  homepage 'https://whoozle.github.io/android-file-transfer-linux/'

  conflicts_with cask: [
                         'android-file-transfer',
                         'whoozle-android-file-transfer-nightly',
                       ]

  app 'Android File Transfer for Linux.app'
  binary "#{appdir}/Android File Transfer for Linux.app/Contents/SharedSupport/bin/aft-mtp-cli"
  binary "#{appdir}/Android File Transfer for Linux.app/Contents/SharedSupport/bin/aft-mtp-mount"
end
