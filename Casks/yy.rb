cask 'yy' do
  version '1.1.7'
  sha256 '4f04f1d74f66562e4b119c919000e303ac620a57221aefe9013ff404c1f55531'

  # yydl.duowan.com/mac/YY was verified as official when first introduced to the cask
  url "http://yydl.duowan.com/mac/YY/#{version}/YY-#{version}.dmg"
  name 'YY'
  homepage 'http://mac.yy.com/'

  app 'YY.app'
end
