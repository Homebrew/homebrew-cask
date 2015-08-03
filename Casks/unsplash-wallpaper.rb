cask :v1 => 'unsplash-wallpaper' do
  version '1230_1438115325'
  sha256 'f21da8a6368700f14d30d205136d972fca37fe90d0ca29d5241e9be7531962c6'

  # devmate.com is the official download host per the vendor homepage
  url "https://dl.devmate.com/com.leonspok.osx.Unsplash-Wallpaper/#{version.sub(%r{_.*},'')}/#{version.sub(%r{.*_},'')}/UnsplashWallpaper-#{version.sub(%r{_.*},'')}.zip"
  appcast 'http://updateinfo.devmate.com/com.leonspok.osx.Unsplash-Wallpaper/updates.xml',
          :sha256 => 'f1c0d391450a371bbb0f5ae3cfbf9d4630f26dce58618e216dedd56bb1015597'
  name 'Unsplash Wallpaper'
  homepage 'http://unsplash-wallpaper.tumblr.com'
  license :gratis

  depends_on :macos => '>= :mountain_lion'

  app 'Unsplash Wallpaper.app'
end
