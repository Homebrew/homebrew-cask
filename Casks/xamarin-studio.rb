cask :v1 => 'xamarin-studio' do
  version '5.5.0.227-0'
  sha256 '4c05b5174fd1d2eacef44f2f96557fc213f25381ad0ea3c139612217a20e8d46'

  url "http://download.xamarin.com/studio/Mac/XamarinStudio-#{version}.dmg"
  appcast 'http://xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          :sha256 => '713f272a1e36262f1b2c5a06f4ed1b1eb8987d240018347a51312dfedeeafcf3',
          :format => :unknown
  homepage 'http://xamarin.com/studio'
  license :unknown

  app 'Xamarin Studio.app'
end
