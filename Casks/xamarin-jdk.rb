cask 'xamarin-jdk' do
  version '1.7.0_71'
  sha256 '70a18547b529a111c4e5cf133532082e142908819b0d61e273c21dee86fcc87a'

  url "https://download.xamarin.com/Installer/MonoForAndroid/jdk-#{version.sub(%r{^\d+\.(\d+).*?_(.*)$}, '\1u\2')}-macosx-x64.dmg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          :sha256 => '9fd357039968b833cd2b2e0f0acd276a8eb30059a240765f4a18d5045565f704'
  name 'Xamarin Java JDK'
  homepage 'https://xamarin.com/platform'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "JDK #{version.split('.')[1]} Update #{version.split('_')[1]}.pkg"

  uninstall :pkgutil => "com.oracle.jdk#{version.sub(%r{^\d+\.(\d+).*?_(.*)$}, '\1u\2')}"
end
