cask :v1 => 'unsplash-wallpaper' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url 'http://dl.devmate.com/com.leonspok.osx.Unsplash-Wallpaper/UnsplashWallpaper.dmg'
  appcast 'http://updateinfo.devmate.com/com.leonspok.osx.Unsplash-Wallpaper/updates.xml',
          :sha256 => '9086fb92c1c4f96d4edfd356dd3b7e35c3c5ee10c9928c43f06f6817503e2640'
  name 'Unsplash Wallpaper'
  homepage 'http://leonspok.tumblr.com/unsplash-wallpaper'
  license :gratis

  depends_on :macos => '>= :mountain_lion'

  app 'Unsplash Wallpaper.app'
end
