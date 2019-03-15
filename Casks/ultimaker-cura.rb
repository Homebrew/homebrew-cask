cask 'ultimaker-cura' do
  version '3.6.0'
  sha256 'de47b3969f7cf77e3c6acc87d3c09420d88fe3815178e38d8f030642573486a0'

  url "https://download.ultimaker.com/cura/Ultimaker_Cura-#{version}-Darwin.dmg"
  appcast 'https://ultimaker.com/en/products/cura-software'
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
