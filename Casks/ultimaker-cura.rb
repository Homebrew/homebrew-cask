cask 'ultimaker-cura' do
  version '4.6.1'
  sha256 '2587e333d601f76242854a84eec955a354f6648f8fe916e0955148a42931abd7'

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
