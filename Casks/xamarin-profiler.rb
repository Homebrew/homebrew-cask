cask 'xamarin-profiler' do
  version '1.6.11-16'
  sha256 '2a9292cd8abe517103ef80e5507da97a43fcba23ae4224142695de89879c0c2c'

  url "https://dl.xamarin.com/profiler/profiler-mac-#{version}.pkg"
  appcast 'https://developer.xamarin.com/releases/profiler/'
  name 'Xamarin Profiler'
  homepage 'https://developer.xamarin.com/releases/profiler/'

  pkg "profiler-mac-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.profiler'
end
