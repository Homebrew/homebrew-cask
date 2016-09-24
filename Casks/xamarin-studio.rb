cask 'xamarin-studio' do
  version '6.1.0.5441-0'
  sha256 'fc7962bde1bcdc2b1ca61ee15e65db0b6897c7228a65dec748ce0ff00823199b'

  url "https://download.xamarin.com/studio/Mac/XamarinStudio-#{version}.dmg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: 'b3b4ad91917a09091c1fee7f5aa71bab10c1c8cee5e5f2cbcdbb50e86ac31ac9'
  name 'Xamarin Studio'
  homepage 'https://xamarin.com/studio'
  license :gpl

  app 'Xamarin Studio.app'
end
