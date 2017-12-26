cask 'yate' do
  version '3.17.4.1'
  sha256 '6abad06c0d4c93eb442959d074954b0e30facbe6d32b34520b7771ab4c89f215'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: 'a4b42c3a122705abf437a79098b69b735cf870e25806d0670c43975d01c2ffaa'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
