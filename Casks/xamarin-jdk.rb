cask :v1 => 'xamarin-jdk' do
  version '1.7.0_71'
  sha256 '70a18547b529a111c4e5cf133532082e142908819b0d61e273c21dee86fcc87a'

  url 'https://download.xamarin.com/Installer/MonoForAndroid/jdk-7u71-macosx-x64.dmg'
  name 'Xamarin Java JDK'
  appcast 'https://xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          :sha256 => '79c309d6dbe6f08f1d022c9376a4678cc94f57be084007df90c5a12839b35cdd',
          :format => :unknown
  homepage 'https://xamarin.com/platform'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'JDK 7 Update 71.pkg'

  uninstall :pkgutil => 'com.oracle.jdk7u71'
end
