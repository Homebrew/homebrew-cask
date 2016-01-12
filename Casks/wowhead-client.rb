cask 'wowhead-client' do
  version '1.2.2'
  sha256 '6d3b8cebcc74da52c459c4fd91168ad24b4c00dd12c63c44c25fb60870ff716b'

  url 'https://static.wowhead.com/download/Wowhead_Client.dmg'
  appcast 'https://client.wowhead.com/files/wowhead-client-appcast.xml',
          :sha256 => '87704cb16b15c9960f5eb0515d7da0788e46155727c330bc8cc4d80c364186d4'
  name 'Wowhead Client'
  homepage 'https://wowhead.com'
  license :gratis

  app 'Wowhead Client.app'
end
