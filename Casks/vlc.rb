class Vlc < Cask
  homepage 'http://www.videolan.org/vlc/'
  url 'http://downloads.sourceforge.net/project/vlc/2.0.3/macosx/vlc-2.0.3.dmg'
  sha1 'fb49e0da2584eb87abf7f8a93961cb86aa85c579'
  install :app => 'VLC.app'
end
