cask 'yate' do
  version '3.16.1'
  sha256 '9014a8fd5c58be5d2773a82c3bc6e8f089b3192b1ab1bd74197de11bc7df5beb'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip',
      using: :post
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '78ddb43473ea71193cac929b5e53e9ddaa780ac61df8bd4e96ab3abf939bd483'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
