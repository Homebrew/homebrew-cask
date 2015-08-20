cask :v1 => 'unsplash-wallpaper' do
  version '1301_1439418481'
  sha256 '8becb8675fb74d62b2ff70bd57b72c80f1e1d550e907cc00b927406da5862a35'

  # devmate.com is the official download host per the vendor homepage
  url "https://dl.devmate.com/com.leonspok.osx.Unsplash-Wallpaper/#{version.sub(%r{_.*},'')}/#{version.sub(%r{.*_},'')}/UnsplashWallpaper-#{version.sub(%r{_.*},'')}.zip"
  appcast 'http://updateinfo.devmate.com/com.leonspok.osx.Unsplash-Wallpaper/updates.xml',
          :sha256 => 'f94db4e59c4e6484d5c3ce4131d5b70e242d2253d18f4019f792e4f0f9280917'
  name 'Unsplash Wallpaper'
  homepage 'http://unsplash-wallpaper.tumblr.com'
  license :gratis

  depends_on :macos => '>= :mountain_lion'

  app 'Unsplash Wallpaper.app'
end
