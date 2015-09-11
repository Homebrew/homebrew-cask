cask :v1 => 'unsplash-wallpaper' do
  version '1330_1440930902'
  sha256 'f85d5a05de54c9407f4d2287a2cba54bdb8f5a5f97c64a22b9da129d5a3bcf8c'

  # devmate.com is the official download host per the vendor homepage
  url "https://dl.devmate.com/com.leonspok.osx.Unsplash-Wallpaper/#{version.sub(%r{_.*},'')}/#{version.sub(%r{.*_},'')}/UnsplashWallpaper-#{version.sub(%r{_.*},'')}.zip"
  appcast 'http://updateinfo.devmate.com/com.leonspok.osx.Unsplash-Wallpaper/updates.xml',
          :sha256 => '949b1642f6dfefde4569d16363c353a56892d1771ba08a307f7d05fbe4063840'
  name 'Unsplash Wallpaper'
  homepage 'http://unsplash-wallpaper.tumblr.com'
  license :gratis

  depends_on :macos => '>= :mountain_lion'

  app 'Unsplash Wallpaper.app'
end
