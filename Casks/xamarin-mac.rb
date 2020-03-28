cask 'xamarin-mac' do
  version '6.14.1.39'
  sha256 'c20a5b4c1f37081d998290291a2fd127b6d1be41ae78c0f58743f5bb42fe05fd'

  url "https://dl.xamarin.com/XamarinforMac/Mac/xamarin.mac-#{version}.pkg"
  appcast 'https://docs.microsoft.com/en-us/xamarin/mac/release-notes/',
          configuration: version.major_minor
  name 'Xamarin Mac'
  homepage 'https://www.xamarin.com/platform'

  depends_on cask: 'homebrew/cask-versions/mono-mdk-for-visual-studio'

  pkg "xamarin.mac-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.mac-.*'
end
