cask 'xamarin-profiler' do
  version '1.6.4-16'
  sha256 'fd9b384d63f63b9773cd15dcb8713177da8c5d59c8e07159424090147dc3a983'

  url "https://dl.xamarin.com/profiler/profiler-mac-#{version}.pkg"
  appcast 'https://developer.xamarin.com/releases/profiler/'
  name 'Xamarin Profiler'
  homepage 'https://developer.xamarin.com/releases/profiler/'

  pkg "profiler-mac-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.profiler'
end
