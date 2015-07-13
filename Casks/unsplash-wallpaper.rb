cask :v1 => 'unsplash-wallpaper' do
  version '1132'
  sha256 'c00e83f17212dc9cd6768f090ecc41bdb30890ecc822a34f5196805ff87b134b'

  # devmate.com is the official download host per the vendor homepage
  url "http://dl.devmate.com/com.leonspok.osx.Unsplash-Wallpaper/1132/1436541007/UnsplashWallpaper-#{version}.zip"
  appcast 'http://updateinfo.devmate.com/com.leonspok.osx.Unsplash-Wallpaper/updates.xml',
          :sha256 => '16756a17b97312c9baf0f72e64f40dab13f88fd508a09c981307d6e66cce960d'
  name 'Unsplash Wallpaper'
  homepage 'http://leonspok.tumblr.com/unsplash-wallpaper'
  license :gratis

  depends_on :macos => '>= :mountain_lion'

  app 'Unsplash Wallpaper.app'
end
