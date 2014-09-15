class Vlc < Cask
  version '2.1.5'
  sha256 '923504e296829f4253af8276b992636f72e56232ecdbdcf6003647ee662257f2'

  url "https://get.videolan.org/vlc/#{version}/macosx/vlc-#{version}.dmg"
  appcast 'http://update.videolan.org/vlc/sparkle/vlc-intel64.xml'
  homepage 'http://www.videolan.org/vlc/'

  app 'VLC.app'
end
