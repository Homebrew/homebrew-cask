cask 'wowhead-client' do
  version '1.2.2'
  sha256 '6d3b8cebcc74da52c459c4fd91168ad24b4c00dd12c63c44c25fb60870ff716b'

  url 'https://static.wowhead.com/download/Wowhead_Client.dmg'
  appcast 'https://client.wowhead.com/files/wowhead-client-appcast.xml',
          checkpoint: '4b3ecdb41c77fe47de375e19173e98c1642e918d6cd4300aa76b616057cac7e8'
  name 'Wowhead Client'
  homepage 'https://wowhead.com'

  app 'Wowhead Client.app'
end
