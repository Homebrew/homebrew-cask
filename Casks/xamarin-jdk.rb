cask 'xamarin-jdk' do
  version '8.101'
  sha256 '680de8ddead3867fc34e7ff380f437c7ddb8dc75eb606186a3e8ae7e3b8c7fbc'

  url "https://download.xamarin.com/Installer/MonoForAndroid/jdk-#{version.major}u#{version.minor}-macosx-x64.dmg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '477c85901ee0146c2f34467c8cfc1f3a94bcb96c5467bb8b5cfc1ed765b3676e'
  name 'Xamarin Java JDK'
  homepage 'https://www.xamarin.com/platform'

  pkg "JDK #{version.major} Update #{version.minor}.pkg"

  uninstall pkgutil: "com.oracle.jdk#{version.major}u#{version.minor}"
end
