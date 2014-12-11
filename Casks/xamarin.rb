cask :v1 => 'xamarin' do
  version :latest
  sha256 :no_check

  url 'http://download.xamarin.com/Installer/Mac/XamarinInstaller.dmg'
  homepage 'http://xamarin.com/platform'
  license :unknown    # todo: improve this machine-generated value

  installer :manual => 'Install Xamarin.app'

  uninstall :delete => '/Applications/Xamarin Studio.app'
  zap       :delete => '~/Library/Developer/Xamarin'

  caveats do
    puts 'This app requires the JRE (Java Runtime Environment) to be installed'
  end
end
