cask :v1 => 'unsplash-wallpaper' do
  version '1341_1445283621'
  sha256 '5683d617ffb5c9090bd356b864db6500665b9ca84ab61aaffdf154f4148d33fd'

  # devmate.com is the official download host per the vendor homepage
  url "https://dl.devmate.com/com.leonspok.osx.Unsplash-Wallpaper/#{version.sub(%r{_.*},'')}/#{version.sub(%r{.*_},'')}/UnsplashWallpaper-#{version.sub(%r{_.*},'')}.zip"
  appcast 'http://updateinfo.devmate.com/com.leonspok.osx.Unsplash-Wallpaper/updates.xml',
          :sha256 => '72fee1b20b7a639966c7a56b0f276f46df7866d0efa533e8cfd497a0ecfee72b'
  name 'Unsplash Wallpaper'
  homepage 'http://unsplash-wallpaper.tumblr.com'
  license :gratis

  depends_on :macos => '>= :mountain_lion'

  app 'Unsplash Wallpaper.app'
end
