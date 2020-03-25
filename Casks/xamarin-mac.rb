cask 'xamarin-mac' do
  version '6.16.0.0'
  sha256 'c1cab2ba1a9ea58858647a7e70b011e8f40dd21baff666f78e2244e08132c15d'

  url "https://dl.xamarin.com/XamarinforMac/Mac/xamarin.mac-#{version}.pkg"
  appcast 'https://docs.microsoft.com/en-us/xamarin/mac/release-notes/',
          configuration: version.major_minor
  name 'Xamarin Mac'
  homepage 'https://www.xamarin.com/platform'

  depends_on cask: 'homebrew/cask-versions/mono-mdk-for-visual-studio'

  pkg "xamarin.mac-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.mac-.*'
end
