cask 'ultimaker-cura' do
  version '3.2.1'
  sha256 '162554f2784d8a44b2d8a5fb9827a6cae6009582484d10feb9f8f1217598c8a1'

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
