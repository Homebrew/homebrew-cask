cask 'yy' do
  version '1.1.17'
  sha256 '06fff26693211c640867454de2ab4cc9e380194bf254ae339518bb22fbd90af2'

  # yydl.duowan.com/mac/YY was verified as official when first introduced to the cask
  url "http://yydl.duowan.com/mac/YY/#{version}/YY-#{version}.dmg"
  name 'YY'
  homepage 'http://www.yy.com/'

  app 'YY.app'
end
