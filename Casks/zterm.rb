cask 'zterm' do
  version '1.2'
  sha256 '711b1e4322970d2ece65ab5d51e18f2e634c2f43847db9a7a98e4326e1b8217c'

  url "http://www.dalverson.com/zterm/ZTerm#{version}.dmg"
  appcast 'http://www.dalverson.com/zterm/',
          checkpoint: '01529a62d5e461be535a606f8ee1e5a27710cec904e33358a02bd6690c9fec13'
  name 'ZTerm'
  homepage 'http://www.dalverson.com/zterm/'

  app 'ZTerm.app'
end
