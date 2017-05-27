cask 'xamarin-mac' do
  version '3.4.0.36'
  sha256 'e26a80365b60ef38b5815bdfbea3fc60cba98ae11e6e0822f3c37707d63978ce'

  url "https://dl.xamarin.com/XamarinforMac/Mac/xamarin.mac-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: 'd1c454ead2e12eb823776ab1e0f18c35cb9372379ac93aacff7107c0c76b8c0b'
  name 'Xamarin Mac'
  homepage 'https://www.xamarin.com/platform'

  depends_on cask: 'mono-mdk'

  pkg "xamarin.mac-#{version}.pkg"

  uninstall pkgutil: [
                       "xamarin.mac-#{version}.pkg",
                       "xamarin.mac-uninstall-#{version}.pkg",
                     ]
end
