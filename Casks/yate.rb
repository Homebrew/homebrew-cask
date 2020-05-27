cask 'yate' do
  version '5.1.3.2'
  sha256 '20b407750754f666d6be8de5ab5ffe21d90828e1d3ff4ec23e93d86dfc45d63b'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
