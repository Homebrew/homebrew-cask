cask 'xamarin-profiler' do
  version '1.6.12-26'
  sha256 '8968ee2cd555efcd9058ee313683d09c731aec5bf6c0e01b65020fe4917b0c87'

  url "https://dl.xamarin.com/profiler/profiler-mac-#{version}.pkg"
  appcast 'https://developer.xamarin.com/releases/profiler/'
  name 'Xamarin Profiler'
  homepage 'https://developer.xamarin.com/releases/profiler/'

  pkg "profiler-mac-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.profiler'
end
