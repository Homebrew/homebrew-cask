cask 'xamarin-studio' do
  version '5.10.1.6-0'
  sha256 'd17920d80cf956635385d97198a9cebd8b08bd580a732e35329161297c65fcf4'

  url "https://download.xamarin.com/studio/Mac/XamarinStudio-#{version}.dmg"
  name 'Xamarin Studio'
  appcast 'https://xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          :sha256 => 'b30881e8f9262311eafbc2bf4ea51d9663a1a0067c0ebb6372ca9b86e466b502'
  homepage 'https://xamarin.com/studio'
  license :gpl

  app 'Xamarin Studio.app'
end
