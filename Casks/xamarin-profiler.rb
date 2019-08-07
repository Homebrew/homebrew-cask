cask 'xamarin-profiler' do
  version '1.6.10-15'
  sha256 '7f9bb7f22e046549887877715b83d3df89ccce82e8304c6c701103ae0bd64f4c'

  url "https://dl.xamarin.com/profiler/profiler-mac-#{version}.pkg"
  appcast 'https://developer.xamarin.com/releases/profiler/'
  name 'Xamarin Profiler'
  homepage 'https://developer.xamarin.com/releases/profiler/'

  pkg "profiler-mac-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.profiler'
end
