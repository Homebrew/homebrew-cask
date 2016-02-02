cask 'xamarin-jdk' do
  version '7.71'
  sha256 '70a18547b529a111c4e5cf133532082e142908819b0d61e273c21dee86fcc87a'

  url "https://download.xamarin.com/Installer/MonoForAndroid/jdk-#{version.major}u#{version.minor}-macosx-x64.dmg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '477b5e7a151c72b77987ea715278ff32bf7139a1829ff4deb20e67e2d35c7dd3'
  name 'Xamarin Java JDK'
  homepage 'https://xamarin.com/platform'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "JDK #{version.major} Update #{version.minor}.pkg"

  uninstall pkgutil: "com.oracle.jdk#{version.major}u#{version.minor}"
end
