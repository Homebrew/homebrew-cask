cask :v1 => 'xamarin' do
  version :latest
  sha256 :no_check

  url 'https://download.xamarin.com/Installer/Mac/XamarinInstaller.dmg'
  name 'Xamarin Platform'
  homepage 'https://xamarin.com/platform'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer :manual => 'Install Xamarin.app'

  uninstall :delete => '/Applications/Xamarin Studio.app'
  zap       :delete => '~/Library/Developer/Xamarin'

  caveats <<-EOS.undent
    If you choose to install Xamarin.Android, you'll need Java 6+,
    you can install the latest Java using

      brew cask install java
  EOS
end
