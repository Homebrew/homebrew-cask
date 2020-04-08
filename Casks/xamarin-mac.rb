cask 'xamarin-mac' do
  version '6.16.0.11'
  sha256 'f74df10748efa8169ff852593c422f7ee363f9480a13857853139b42d542540e'

  url "https://dl.xamarin.com/XamarinforMac/Mac/xamarin.mac-#{version}.pkg"
  appcast 'https://docs.microsoft.com/en-us/xamarin/mac/release-notes/',
          configuration: version.major_minor
  name 'Xamarin Mac'
  homepage 'https://www.xamarin.com/platform'

  depends_on cask: 'homebrew/cask-versions/mono-mdk-for-visual-studio'

  pkg "xamarin.mac-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.mac-.*'
end
