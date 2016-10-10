cask 'xamarin-jdk' do
  version '7.71'
  sha256 '70a18547b529a111c4e5cf133532082e142908819b0d61e273c21dee86fcc87a'

  url "https://download.xamarin.com/Installer/MonoForAndroid/jdk-#{version.major}u#{version.minor}-macosx-x64.dmg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '773227b41218a95c3404b764d09eed828cc248aa4bb3aaabbe75c6ad95022b22'
  name 'Xamarin Java JDK'
  homepage 'https://xamarin.com/platform'

  pkg "JDK #{version.major} Update #{version.minor}.pkg"

  uninstall pkgutil: "com.oracle.jdk#{version.major}u#{version.minor}"
end
