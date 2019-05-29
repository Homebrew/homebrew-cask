cask 'yate' do
  version '4.7.0.2'
  sha256 'ab7e072a2aaca42ea731a64aefe35382e754c3e4d7d6465ccd53f829266673a5'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
