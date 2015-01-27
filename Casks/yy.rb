cask :v1 => 'yy' do
  version '1.1.0'
  sha256 '9e3e286ed676d1e046211e459779f9b756444026cc8c86d3b558e7230a0c0838'

  url "http://yydl.duowan.com/mac/YY/#{version}/YY-#{version}.dmg"
  name 'YY'
  homepage 'http://mac.yy.com/'
  license :gratis

  app 'YY.app'
end
