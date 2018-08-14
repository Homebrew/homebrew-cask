cask 'xamarin-profiler' do
  version '1.6.2-165'
  sha256 '1050061b4aa013d21684cbd8e5474438d502161a7d24562de860f29339e05078'

  url "https://dl.xamarin.com/profiler/profiler-mac-#{version}.pkg"
  name 'Xamarin Profiler'
  homepage 'https://developer.xamarin.com/releases/profiler/'

  pkg "profiler-mac-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.profiler'
end
