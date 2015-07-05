cask :v1 => 'unsplash-wallpaper' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url 'http://dl.devmate.com/com.leonspok.osx.Unsplash-Wallpaper/UnsplashWallpaper.dmg'
  name 'Unsplash Wallpaper'
  homepage 'http://leonspok.tumblr.com/unsplash-wallpaper'
  license :gratis

  depends_on :macos => '>= :mountain_lion'

  app 'Unsplash Wallpaper.app'
end
