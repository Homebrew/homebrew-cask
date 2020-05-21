cask 'xamarin-mac' do
  version '6.18.1.31'
  sha256 'f7e2e9284f85de994908d3209e5e308d689a5c2d5b15c5a4bba4753688b04b69'

  url "https://dl.xamarin.com/XamarinforMac/Mac/xamarin.mac-#{version}.pkg"
  appcast 'https://docs.microsoft.com/en-us/xamarin/mac/release-notes/',
          configuration: version.major_minor
  name 'Xamarin Mac'
  homepage 'https://www.xamarin.com/platform'

  depends_on cask: 'homebrew/cask-versions/mono-mdk-for-visual-studio'

  pkg "xamarin.mac-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.mac-.*'
end
