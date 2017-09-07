cask 'tysimulator' do
  version '0.8.0'
  sha256 '0bd46b70215ddc53ad349fb7d53d2bdd550b5481b37d62bedeef87d1298b831e'

  # github.com/luckytianyiyan/TySimulator was verified as official when first introduced to the cask
  url "https://github.com/luckytianyiyan/TySimulator/releases/download/#{version}/TySimulator.#{version}.dmg"
  appcast 'https://github.com/luckytianyiyan/TySimulator/releases.atom',
          checkpoint: '46e996a6adbf9dfc6bb7c2455bb2790856f538c77bc0bce1b20a6d2016e85e30'
  name 'TySimulator'
  homepage 'https://tysimulator.com/'

  app 'TySimulator.app'

  uninstall quit: 'com.tianyiyan.TySimulator'

  zap trash: '~/Library/Preferences/com.tianyiyan.TySimulator.plist'
end
