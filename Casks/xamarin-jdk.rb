cask 'xamarin-jdk' do
  version '8.101'
  sha256 '680de8ddead3867fc34e7ff380f437c7ddb8dc75eb606186a3e8ae7e3b8c7fbc'

  url "https://download.xamarin.com/Installer/MonoForAndroid/jdk-#{version.major}u#{version.minor}-macosx-x64.dmg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: 'e9d6b090a6081665f2e10fa603bceb692845def3e615db19578217fca9d998d9'
  name 'Xamarin Java JDK'
  homepage 'https://www.xamarin.com/platform'

  pkg "JDK #{version.major} Update #{version.minor}.pkg"

  uninstall pkgutil: "com.oracle.jdk#{version.major}u#{version.minor}"
end
