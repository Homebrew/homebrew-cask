cask 'yate' do
  version '3.14.3'
  sha256 'ffd8dc49f522c3160301670502d73e4837ec02b77d7be797e31515f540301660'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip',
      using: :post
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: 'b1274065c820f5010c0ea56e924a9072f8d814ccaee1687dcad20a04a5c2cccc'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
