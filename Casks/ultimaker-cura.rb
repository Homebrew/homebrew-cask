cask 'ultimaker-cura' do
  version '3.5.1'
  sha256 '40eae55f41079b41793489dc61b2fcd5ff360c6939eb61d57575db30879aa603'

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
