cask 'ultimaker-cura' do
  version '3.4.1'
  sha256 'b87009256be6c6d179faaf24d0b94b81db3ad37bc1d07ab503e7451c7b293b2d'

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
