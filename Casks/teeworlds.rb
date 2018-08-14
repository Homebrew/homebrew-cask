cask 'teeworlds' do
  version '0.6.4'
  sha256 '547e6535ea38895a148bec365752c915bad7a661fd224cb3d019e62012a5559c'

  # github.com/teeworlds/teeworlds was verified as official when first introduced to the cask
  url "https://github.com/teeworlds/teeworlds/releases/download/#{version}-release/teeworlds-#{version}-osx.dmg"
  appcast 'https://github.com/teeworlds/teeworlds/releases.atom'
  name 'Teeworlds'
  homepage 'https://www.teeworlds.com/'

  app 'Teeworlds.app'
  app 'Teeworlds Server.app'
end
