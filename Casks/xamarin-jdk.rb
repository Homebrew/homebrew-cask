cask 'xamarin-jdk' do
  version '7.71'
  sha256 '70a18547b529a111c4e5cf133532082e142908819b0d61e273c21dee86fcc87a'

  url "https://download.xamarin.com/Installer/MonoForAndroid/jdk-#{version.major}u#{version.minor}-macosx-x64.dmg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '855d95a330efdd9cc13cbaabc6e49dfcda111db3b16cbc6345e3a0d17e769972'
  name 'Xamarin Java JDK'
  homepage 'https://xamarin.com/platform'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "JDK #{version.major} Update #{version.minor}.pkg"

  uninstall pkgutil: "com.oracle.jdk#{version.major}u#{version.minor}"
end
