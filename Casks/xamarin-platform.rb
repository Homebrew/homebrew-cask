class XamarinPlatform < Cask
  url 'http://download.xamarin.com/Installer/Mac/XamarinInstaller.dmg'
  homepage 'http://xamarin.com/platform'
  version '5.0.1-build-3'
  sha256 '063935ac9c5c5726946614d382c0b412093a961d1473436dfac8b1969e7b7c31'

  after_install do
    system '/usr/bin/sudo', '-E', '--',
      "#{destination_path}/Install Xamarin.app/Contents/MacOS/Install_Xamarin"
  end

  #uninstall :files => [
  #  '/Applications/Xamarin Studio.app',
  #  '~/Library/Developer/Xamarin'
  #]
end
