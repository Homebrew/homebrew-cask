cask 'yate' do
  version '3.16.2.3'
  sha256 '06d4934009e2279975e4b034f31084f4022e1db26a9cba693cde2984800fdf23'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip',
      using: :post
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: 'ba820aec0a8c04995ee4888830078ad74319cf1efd63c9d6b5993e5e33b49b31'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
