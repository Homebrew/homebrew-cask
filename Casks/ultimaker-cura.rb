cask 'ultimaker-cura' do
  version '3.2.0'
  sha256 '6416f3ec9f045d42c5547afa4e730d3faecfd28aac864ffd9296dfd91e0da5a9'

  url "https://software.ultimaker.com/current/Ultimaker%20Cura-#{version}-Darwin.dmg"
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
