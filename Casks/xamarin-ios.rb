cask 'xamarin-ios' do
  version '9.4.0.0'
  sha256 '7ffe0e60ed200d3545e14901ac2b5ab7a017785225d6e48fd433cba00bbdea98'

  url "https://download.xamarin.com/MonoTouch/Mac/monotouch-#{version}.pkg"
  name 'Xamarin.iOS'
  appcast 'https://xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          :sha256 => 'b30881e8f9262311eafbc2bf4ea51d9663a1a0067c0ebb6372ca9b86e466b502'
  homepage 'https://xamarin.com/ios'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "monotouch-#{version}.pkg"

  uninstall :pkgutil => [
                         'com.xamarin.monotouch.pkg',
                         'com.xamarin.xamarin-ios-build-host.pkg'
                        ]
end
