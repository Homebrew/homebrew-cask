cask 'xamarin' do
  version :latest
  sha256 :no_check

  url 'https://download.xamarin.com/Installer/Mac/XamarinInstaller.dmg'
  name 'Xamarin Platform'
  homepage 'https://www.xamarin.com/platform'

  installer manual: 'Install Xamarin.app'

  uninstall delete: '/Applications/Xamarin Studio.app'

  zap trash: '~/Library/Developer/Xamarin'

  caveats do
    depends_on_java
  end
end
