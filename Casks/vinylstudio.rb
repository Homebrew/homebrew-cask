cask 'vinylstudio' do
  version '10.0.2'
  sha256 '55459e4de2e8cbbed6bd8ea1c01c9c082217f54d1b86df00d9c52f99045e5c6c'

  url 'https://www.alpinesoft.co.uk/VinylStudio/VinylStudio-Installer.pkg'
  name 'VinylStudio'
  homepage 'https://www.alpinesoft.co.uk/'

  auto_updates true
  container type: :naked

  installer manual: 'VinylStudio-Installer.pkg'

  uninstall delete: [
                      '/Applications/VinylStudio.app/',
                      '~/Library/Saved Application State/uk.co.AlpineSoft.VinylStudio.savedState',
                      '~/Library/Preferences/uk.co.AlpineSoft.VinylStudio.plist',
                      '~/Library/Containers/uk.co.AlpineSoft.VinylStudio',
                    ]

  caveats 'This release requires a manual installation because of AppleScript in the postinstall script.  This is due to be removed in a future release'
end
