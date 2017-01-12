cask 'waterroof' do
  version '3.8'
  sha256 '30c5794bab61ad30a019b0f1a2cf798dcc6f3bc83a867fde1b3a4f71019c48ee'

  url "http://www.hanynet.com/waterroof-#{version}.zip"
  appcast 'http://www.hanynet.com/waterroof/',
          checkpoint: 'a6fd26b21833a379e4dee0bab6bcb1d49efc2c68967cb477c6f75d6ca1b03849'
  name 'WaterRoof'
  homepage 'http://www.hanynet.com/waterroof/'

  app 'WaterRoof.app'
end
