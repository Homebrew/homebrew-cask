cask 'xamarin-mac' do
  version '6.18.3.2'
  sha256 '2e337ddf4a853801a981b843290936d157c4a4e43136f11528b98aa956c56cbb'

  url "https://dl.xamarin.com/XamarinforMac/Mac/xamarin.mac-#{version}.pkg"
  appcast 'https://github.com/xamarin/xamarin-macios/releases.atom'
  name 'Xamarin Mac'
  homepage 'https://www.xamarin.com/platform'

  depends_on cask: 'homebrew/cask-versions/mono-mdk-for-visual-studio'

  pkg "xamarin.mac-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.mac-.*'
end
