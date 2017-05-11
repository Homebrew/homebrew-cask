cask 'yate' do
  version '3.16'
  sha256 'd8ffdc365b89d6aa4c16ef238978fd53f241eb7641eedb67c40adc3c6888d1cd'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip',
      using: :post
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: 'c40074bf6e842665dd49a8fdb65c9d70681c3c592b66d0f54982df16084b7b5e'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
