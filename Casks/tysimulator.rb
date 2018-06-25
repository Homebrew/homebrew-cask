cask 'tysimulator' do
  version '0.8.1'
  sha256 '064c8fa2a35607e262e131c150e837af28fb357e38308cb02f0bbf0eff51ea49'

  # github.com/luckytianyiyan/TySimulator was verified as official when first introduced to the cask
  url "https://github.com/luckytianyiyan/TySimulator/releases/download/#{version}/TySimulator.#{version}.dmg"
  appcast 'https://github.com/luckytianyiyan/TySimulator/releases.atom'
  name 'TySimulator'
  homepage 'https://tysimulator.com/'

  app 'TySimulator.app'

  uninstall quit: 'com.tianyiyan.TySimulator'

  zap trash: '~/Library/Preferences/com.tianyiyan.TySimulator.plist'
end
