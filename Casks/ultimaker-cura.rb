cask 'ultimaker-cura' do
  version '4.5.0'
  sha256 'c362e7bb3ad452c04c8a93ebbcc906c730afa7c0d4d61763b6dadeaf6c55d20d'

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
