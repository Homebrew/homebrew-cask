cask 'whoozle-android-file-transfer' do
  version '3.4'
  sha256 'b32fd4958760f5f184721e61a589ea9d49d22778e8370bbf53f4a66dcb35cbef'

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
end
