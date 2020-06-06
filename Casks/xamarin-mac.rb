cask 'xamarin-mac' do
  version '6.18.2.1'
  sha256 '1fd7e2c6c839aa958a568261c3af3df358d4ac64bfc73079a4c65e3455b4dccb'

  url "https://dl.xamarin.com/XamarinforMac/Mac/xamarin.mac-#{version}.pkg"
  appcast 'https://github.com/xamarin/xamarin-macios/releases.atom'
  name 'Xamarin Mac'
  homepage 'https://www.xamarin.com/platform'

  depends_on cask: 'homebrew/cask-versions/mono-mdk-for-visual-studio'

  pkg "xamarin.mac-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.mac-.*'
end
