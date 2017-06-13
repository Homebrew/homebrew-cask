cask 'wowhead-client' do
  version '1.2.2'
  sha256 '2f2d0bbdc41047d065489f394307a590de759f0b984ed8b73823392e0a7804b3'

  url "http://client.wowhead.com/files/wowhead-client-app_#{version}.tgz"
  appcast 'https://client.wowhead.com/files/wowhead-client-appcast.xml',
          checkpoint: '4b3ecdb41c77fe47de375e19173e98c1642e918d6cd4300aa76b616057cac7e8'
  name 'Wowhead Client'
  homepage 'https://www.wowhead.com/'

  app 'Wowhead Client.app'
end
