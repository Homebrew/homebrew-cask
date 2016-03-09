cask 'xamarin-studio' do
  version '5.10.2.56-0'
  sha256 '0e0d3bfd0ea479996d719f9dd83aa60043d20fc144a81fb11d628b1b9d10fca6'

  url "https://download.xamarin.com/studio/Mac/XamarinStudio-#{version}.dmg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '855d95a330efdd9cc13cbaabc6e49dfcda111db3b16cbc6345e3a0d17e769972'
  name 'Xamarin Studio'
  homepage 'https://xamarin.com/studio'
  license :gpl

  app 'Xamarin Studio.app'
end
