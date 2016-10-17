cask 'yate' do
  version '3.14.1.2'
  sha256 '128ea56b6e97c68e139bbb4ccd186e73cb67e2c807b6be91a3ac803b96ff4d23'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip',
      using: :post
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '79359916a311cbdac469a27001d81ed607321a89db08387056c025e6e2991b33'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
