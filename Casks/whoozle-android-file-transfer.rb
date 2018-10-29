cask 'whoozle-android-file-transfer' do
  version '3.5'
  sha256 'e16aa8f682c663b1517f179c3031779f85efe6bcc0bd63c8dc7d2f66cd8a2f13'

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
