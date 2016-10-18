cask 'timely' do
  version '0.3.4'
  sha256 'e03507be08721055c1a761b3753bbf1932a22f75e424bb6ac3c179199982c9b9'

  # github.com/Timely was verified as official when first introduced to the cask
  url "https://github.com/Timely/desktop-releases/releases/download/osx64-v#{version}/Timely-#{version}.dmg"
  appcast 'https://github.com/Timely/desktop-releases/releases.atom',
          checkpoint: 'e4cb97258fa3ef5d9c4ac39ef80ad4bb3a96e11ad81beb1e674962292f270263'
  name 'Timely'
  homepage 'https://timelyapp.com'

  app 'Timely.app'
end
