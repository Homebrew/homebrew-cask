cask 'xamarin-profiler' do
  version '1.6.3-444'
  sha256 '7d981e87102bb392330e0b8ac13724366e381f13c7acfaeb2312ac3ccaa540c7'

  url "https://dl.xamarin.com/profiler/profiler-mac-#{version}.pkg"
  name 'Xamarin Profiler'
  homepage 'https://developer.xamarin.com/releases/profiler/'

  pkg "profiler-mac-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.profiler'
end
