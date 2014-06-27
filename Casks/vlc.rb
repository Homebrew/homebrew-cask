class Vlc < Cask
  version '2.1.4'
  sha256 '01eda0d2672e9517837df595767ee27baf44f92126285af22a9c05df65abc57a'
  
  url 'https://get.videolan.org/vlc/2.1.4/macosx/vlc-2.1.4.dmg'
  appcast 'http://update.videolan.org/vlc/sparkle/vlc-intel64.xml'
  homepage 'http://www.videolan.org/vlc/'

  link 'VLC.app'
end
