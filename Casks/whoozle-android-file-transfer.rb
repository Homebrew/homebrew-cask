cask 'whoozle-android-file-transfer' do
  version '3.2-62d1c79'
  sha256 '84469fd3adba4046a9137093c3e0731e60ae2220381502b452d767cd4de4e676'

  # github.com/whoozle/android-file-transfer-linux was verified as official when first introduced to the cask
  url "https://github.com/whoozle/android-file-transfer-linux/releases/download/v#{version.split('-')[0]}/AFTOSX-#{version}.dmg"
  appcast 'https://github.com/whoozle/android-file-transfer-linux/releases.atom'
  name 'Android File Transfer'
  homepage 'https://whoozle.github.io/android-file-transfer-linux/'

  conflicts_with cask: 'android-file-transfer'

  app 'Android File Transfer.app'
end
