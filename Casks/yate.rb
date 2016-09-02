cask 'yate' do
  version '3.14.0.1'
  sha256 '5d3e7bdcb09a56810c4ad441fd6c7430b357a952ee4a0b075688a7bfa9df9122'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip',
      using: :post
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: 'd8776c97548a1894e2b729d77c2125e5d15e541f58e4b07d5d3104ed88fe59cb'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'
  license :commercial

  app 'Yate.app'
end
