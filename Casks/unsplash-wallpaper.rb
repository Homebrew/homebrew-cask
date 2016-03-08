cask 'unsplash-wallpaper' do
  version '1341_1445283621'
  sha256 '5683d617ffb5c9090bd356b864db6500665b9ca84ab61aaffdf154f4148d33fd'

  # devmate.com is the official download host per the vendor homepage
  url "https://dl.devmate.com/com.leonspok.osx.Unsplash-Wallpaper/#{version.sub(%r{_.*}, '')}/#{version.sub(%r{.*_}, '')}/UnsplashWallpaper-#{version.sub(%r{_.*}, '')}.zip"
  appcast 'http://updateinfo.devmate.com/com.leonspok.osx.Unsplash-Wallpaper/updates.xml',
          checkpoint: 'bebe2c890e02b729be2951ce692ba3a509a5468774b1a9ab0c513116bfe352f9'
  name 'Unsplash Wallpaper'
  homepage 'http://unsplash-wallpaper.tumblr.com'
  license :gratis

  depends_on macos: '>= :mountain_lion'

  app 'Unsplash Wallpaper.app'
end
