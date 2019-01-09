cask 'tysimulator' do
  version '0.9.0'
  sha256 '7f0802609ab0066ec7dea4a3bf1cb9e3da1dc482236d64ece159c0b1f8a91a1e'

  # github.com/luckytianyiyan/TySimulator was verified as official when first introduced to the cask
  url "https://github.com/luckytianyiyan/TySimulator/releases/download/#{version}/TySimulator.#{version}.dmg"
  appcast 'https://github.com/luckytianyiyan/TySimulator/releases.atom'
  name 'TySimulator'
  homepage 'https://tysimulator.com/'

  app 'TySimulator.app'

  uninstall quit: 'com.tianyiyan.TySimulator'

  zap trash: '~/Library/Preferences/com.tianyiyan.TySimulator.plist'
end
