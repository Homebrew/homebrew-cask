cask 'yy' do
  version '1.1.6'
  sha256 'a38215e90cf99d9ad20f05d230ad26db106ea6fb8464e8829e57843044b3a03b'

  # yydl.duowan.com is the official download host per the vendor homepage
  url "http://yydl.duowan.com/mac/YY/#{version}/YY-#{version}.dmg"
  name 'YY'
  homepage 'http://mac.yy.com/'
  license :freemium

  app 'YY.app'
end
