cask 'yate' do
  version '3.14.3.4'
  sha256 '716b87b1a54bd0f91aa48ee4bf3062d09c8fce0f19d0ca5f212c7635c6cb00f6'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip',
      using: :post
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '04e543a96a8bd7780b5b98c91546bae583d2fbffaf28068cf008e019119c7465'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
