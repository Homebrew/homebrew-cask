cask 'ultimaker-cura' do
  version '4.2.0'
  sha256 '35338491cafa8c76fdb0b48fc507a16a74ad60ce276611fdf7f7f7fb951ce6b6'

  url "https://download.ultimaker.com/cura/Ultimaker_Cura-#{version}-Darwin.dmg"
  appcast 'https://github.com/Ultimaker/Cura/releases.atom'
  name 'Ultimaker Cura'
  name 'Cura'
  homepage 'https://ultimaker.com/en/products/cura-software'

  app 'Ultimaker Cura.app'

  uninstall quit: 'nl.ultimaker.cura'

  zap trash: [
               '~/.cura',
               '~/Library/Application Support/cura',
               '~/Library/Preferences/nl.ultimaker.cura.Ultimaker Cura.plist',
               '~/Library/Saved Application State/nl.ultimaker.cura.savedState',
             ]
end
