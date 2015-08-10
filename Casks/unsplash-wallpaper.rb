cask :v1 => 'unsplash-wallpaper' do
  version '1240_1438381941'
  sha256 '2e233d8b7c3613dbd3c0d0d89ae1a9d4ee76521a8ec360068b6aeba4c3890ed1'

  # devmate.com is the official download host per the vendor homepage
  url "https://dl.devmate.com/com.leonspok.osx.Unsplash-Wallpaper/#{version.sub(%r{_.*},'')}/#{version.sub(%r{.*_},'')}/UnsplashWallpaper-#{version.sub(%r{_.*},'')}.zip"
  appcast 'http://updateinfo.devmate.com/com.leonspok.osx.Unsplash-Wallpaper/updates.xml',
          :sha256 => '209a7aceb636676b7586a9ab53f92095e282d58c44d58f4eff17454eece01821'
  name 'Unsplash Wallpaper'
  homepage 'http://unsplash-wallpaper.tumblr.com'
  license :gratis

  depends_on :macos => '>= :mountain_lion'

  app 'Unsplash Wallpaper.app'
end
