cask 'ultimaker-cura' do
  version '4.3.0'
  sha256 '76be61fbf286b434d72355be176988e28d7e5f030ce04782d897c496894877ba'

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
