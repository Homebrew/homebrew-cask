cask 'whoozle-android-file-transfer' do
  version '3.8'
  sha256 '723a25c75c6e97cc9f5468231eea802326687911ae6723bcfcee9a8ce32f84ff'

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
