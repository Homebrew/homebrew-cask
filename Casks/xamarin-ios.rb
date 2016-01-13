cask 'xamarin-ios' do
  version '9.4.0.0'
  sha256 '7ffe0e60ed200d3545e14901ac2b5ab7a017785225d6e48fd433cba00bbdea98'

  url "https://download.xamarin.com/MonoTouch/Mac/monotouch-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          :sha256 => '9fd357039968b833cd2b2e0f0acd276a8eb30059a240765f4a18d5045565f704'
  name 'Xamarin.iOS'
  homepage 'https://xamarin.com/ios'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "monotouch-#{version}.pkg"

  uninstall :pkgutil => [
                          'com.xamarin.monotouch.pkg',
                          'com.xamarin.xamarin-ios-build-host.pkg',
                        ]
end
