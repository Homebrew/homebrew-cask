cask 'xamarin' do
  version :latest
  sha256 :no_check

  url 'https://download.xamarin.com/Installer/Mac/XamarinInstaller.dmg'
  name 'Xamarin Platform'
  homepage 'https://xamarin.com/platform'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer manual: 'Install Xamarin.app'

  uninstall delete: '/Applications/Xamarin Studio.app'

  zap       delete: '~/Library/Developer/Xamarin'

  caveats do
    depends_on_java
  end
end
