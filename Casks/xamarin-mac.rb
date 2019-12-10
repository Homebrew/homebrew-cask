cask 'xamarin-mac' do
  version '6.8.1.17'
  sha256 '06b714e24237dd29e9bc61a557fa236f9f6a3885808794aaed211a2bbb97f10e'

  url "https://dl.xamarin.com/XamarinforMac/Mac/xamarin.mac-#{version}.pkg"
  appcast 'https://docs.microsoft.com/en-us/xamarin/mac/release-notes/',
          configuration: version.major_minor
  name 'Xamarin Mac'
  homepage 'https://www.xamarin.com/platform'

  depends_on cask: 'mono-mdk'

  pkg "xamarin.mac-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.mac-.*'
end
