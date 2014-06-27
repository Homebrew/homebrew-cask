class XamarinPlatform < Cask
  url 'http://download.xamarin.com/Installer/Mac/XamarinInstaller.dmg'
  homepage 'http://xamarin.com/platform'
  version 'latest'
  sha256 :no_check

  after_install do
    system '/usr/bin/sudo', '-E', '--',
      "#{destination_path}/Install Xamarin.app/Contents/MacOS/Install_Xamarin"
  end

  #uninstall :files => [
  #  '/Applications/Xamarin Studio.app',
  #  '~/Library/Developer/Xamarin'
  #]
end
