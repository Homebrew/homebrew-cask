class WowheadClient < Cask
  url 'http://static.wowhead.com/download/Wowhead_Client.dmg'
  appcast 'http://client.wowhead.com/files/wowhead-client-appcast.xml'
  homepage 'http://wowhead.com'
  version '1.2.2'
  sha256 '6d3b8cebcc74da52c459c4fd91168ad24b4c00dd12c63c44c25fb60870ff716b'
  link 'Wowhead Client.app'
end
