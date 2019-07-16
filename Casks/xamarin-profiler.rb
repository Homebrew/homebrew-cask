cask 'xamarin-profiler' do
  version '1.6.9-468'
  sha256 '3282b21165906a1e875cb5b2fac3fb17adfe95b35a1adae7754abde7129a4b9e'

  url "https://dl.xamarin.com/profiler/profiler-mac-#{version}.pkg"
  appcast 'https://developer.xamarin.com/releases/profiler/'
  name 'Xamarin Profiler'
  homepage 'https://developer.xamarin.com/releases/profiler/'

  pkg "profiler-mac-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.profiler'
end
