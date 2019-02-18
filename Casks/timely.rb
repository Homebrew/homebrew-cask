cask 'timely' do
  version '0.6.0'
  sha256 '07b960a77f008abaa2ac6fb73546be5de51e60913f0bbd38482ccf9d9b94ab06'

  # github.com/Timely was verified as official when first introduced to the cask
  url "https://github.com/Timely/desktop-releases/releases/download/darwin-x64-prod-v#{version}/Timely-#{version}.dmg"
  appcast 'https://github.com/Timely/desktop-releases/releases.atom'
  name 'Timely'
  homepage 'https://timelyapp.com/'

  app 'Timely.app'
end
