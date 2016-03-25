cask 'tribler' do
  version '6.5.1'
  sha256 '30fe98958a749b2137fc9f5489ef8266045b916eef7fdb94bbcfd8ed3355f6d7'

  # github.com/Tribler/tribler was verified as official when first introduced to the cask
  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  appcast 'https://github.com/Tribler/tribler/releases.atom',
          checkpoint: '733d8c9094cdfd4f68f2c5e6cb1e35cee187ef0698053fe2e27ea2f9d4782c88'
  name 'Tribler'
  homepage 'https://www.tribler.org/'
  license :gpl

  app 'Tribler.app'
end
