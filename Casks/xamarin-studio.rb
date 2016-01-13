cask 'xamarin-studio' do
  version '5.10.1.6-0'
  sha256 'd17920d80cf956635385d97198a9cebd8b08bd580a732e35329161297c65fcf4'

  url "https://download.xamarin.com/studio/Mac/XamarinStudio-#{version}.dmg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          :sha256 => '9fd357039968b833cd2b2e0f0acd276a8eb30059a240765f4a18d5045565f704'
  name 'Xamarin Studio'
  homepage 'https://xamarin.com/studio'
  license :gpl

  app 'Xamarin Studio.app'
end
