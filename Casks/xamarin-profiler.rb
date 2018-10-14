cask 'xamarin-profiler' do
  version '1.6.4-20'
  sha256 '16948ec6b3b93322b3439f5d12c0cc31f29c320dd3d244d5f0ec3c5189aa870b'

  url "https://dl.xamarin.com/profiler/profiler-mac-#{version}.pkg"
  appcast 'https://developer.xamarin.com/releases/profiler/'
  name 'Xamarin Profiler'
  homepage 'https://developer.xamarin.com/releases/profiler/'

  pkg "profiler-mac-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.profiler'
end
