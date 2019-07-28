cask 'tiptoi-manager' do
  version '4.1.2'
  sha256 '6f3d1a109cffb49c2942243a2ec1101561970fbeb57166f45b00972ce7e72c65'

  url 'https://tiptoidata.s3-de.object.vdc.interoute.com/installer_flat/tiptoi_Manager_Installer.pkg'
  name 'tiptoi® Manager'

  homepage 'https://www.ravensburger.de/entdecken/ravensburger-marken/tiptoi/tiptoi-manager/index.html'

  pkg 'tiptoi_Manager_Installer.pkg'

  uninstall pkgutil: 'com.ravensburger.tiptoi.TipToiBindings',
            delete: '/Applications/tiptoi®\ Manager.app',
            quit: 'com.ravensburger.tiptoimanager'

  zap trash: [
              '/Applications/tiptoi®\ Manager.app',
              '~/Library/Application\ Support/com.ravensburger.tiptoimanager',
              '~/Library/Preferences/com.ravensburger.tiptoimanager.plist',
              '~/Library/Saved\ Application\ State/com.ravensburger.tiptoimanager.savedState'
             ]

end
