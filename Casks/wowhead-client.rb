cask :v1 => 'wowhead-client' do
  version '1.2.2'
  sha256 '6d3b8cebcc74da52c459c4fd91168ad24b4c00dd12c63c44c25fb60870ff716b'

  url 'https://static.wowhead.com/download/Wowhead_Client.dmg'
  appcast 'http://client.wowhead.com/files/wowhead-client-appcast.xml',
          :sha256 => '70f04bcdeedb2c902e80b6b22b9cd328d0f77af88e981f5865b019afd94130bc'
  homepage 'http://wowhead.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Wowhead Client.app'
end
