cask 'xamarin-jdk' do
  version '8.101'
  sha256 '680de8ddead3867fc34e7ff380f437c7ddb8dc75eb606186a3e8ae7e3b8c7fbc'

  url "https://download.xamarin.com/Installer/MonoForAndroid/jdk-#{version.major}u#{version.minor}-macosx-x64.dmg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '1c931d41a49d507e4519cc22d207a8e96601f9ae17d8497fb05f0183ba0ef26c'
  name 'Xamarin Java JDK'
  homepage 'https://www.xamarin.com/platform'

  pkg "JDK #{version.major} Update #{version.minor}.pkg"

  uninstall pkgutil: "com.oracle.jdk#{version.major}u#{version.minor}"
end
