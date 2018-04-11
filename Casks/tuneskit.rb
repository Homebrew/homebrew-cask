cask 'tuneskit' do
  version '3.6.5'
  sha256 '873a74f1ff8a29fdb14b925e7512d4dea9bcb463485bbd82d223441fce5bd75e'

  url 'https://www.tuneskit.com/TunesKitforMac.dmg'
  appcast 'https://www.tuneskit.com/app_update_files/m4vconverter/mac_update.xml',
          checkpoint: '8a7305f1e54723f2beb227f46d60223de50c99473608df7f19d37eb6e27ecdd0'
  name 'TunesKit for Mac'
  homepage 'https://www.tuneskit.com/'

  app 'TunesKit for Mac.app'
end
