cask 'xamarin-profiler' do
  version '1.6.3-456'
  sha256 '05658c098b46b0ca5e6d193e1b8aa2b1cc98e86bf54d07085e800ccc1a7d5814'

  url "https://dl.xamarin.com/profiler/profiler-mac-#{version}.pkg"
  appcast 'https://developer.xamarin.com/releases/profiler/'
  name 'Xamarin Profiler'
  homepage 'https://developer.xamarin.com/releases/profiler/'

  pkg "profiler-mac-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.profiler'
end
