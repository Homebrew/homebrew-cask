cask 'ultimaker-cura' do
  version '3.4.1'
  sha256 '3bc74a82029fd5a9a87ad073540c89b0a9efd672fe759d9930514caeddfcf4c2'

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
