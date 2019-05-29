cask 'timely' do
  version '0.6.1'
  sha256 'd6226090847503ca79b6e871854464bc105ff28243df08795876e4f3d85bf43b'

  # github.com/Timely was verified as official when first introduced to the cask
  url "https://github.com/Timely/desktop-releases/releases/download/darwin-x64-prod-v#{version}/Timely-#{version}.dmg"
  appcast 'https://github.com/Timely/desktop-releases/releases.atom'
  name 'Timely'
  homepage 'https://timelyapp.com/'

  app 'Timely.app'
end
