cask :v1 => 'unsplash-wallpaper' do
  version '1310_1440235659'
  sha256 '9917e60f6519d87aa9d77fd32ff627695fce3dbcdfd2ade5862be9aa8152401d'

  # devmate.com is the official download host per the vendor homepage
  url "https://dl.devmate.com/com.leonspok.osx.Unsplash-Wallpaper/#{version.sub(%r{_.*},'')}/#{version.sub(%r{.*_},'')}/UnsplashWallpaper-#{version.sub(%r{_.*},'')}.zip"
  appcast 'http://updateinfo.devmate.com/com.leonspok.osx.Unsplash-Wallpaper/updates.xml',
          :sha256 => '5db59f4ca69a68fa846cdc87a852deb56978224be128e28ff77a82ecfc04aea1'
  name 'Unsplash Wallpaper'
  homepage 'http://unsplash-wallpaper.tumblr.com'
  license :gratis

  depends_on :macos => '>= :mountain_lion'

  app 'Unsplash Wallpaper.app'
end
