cask 'yate' do
  version '3.14.3.2'
  sha256 'c699e75e3f5990378e3bed4fcef6418eca519abdf93ae2b19a67f38d4209c942'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip',
      using: :post
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: 'f46d8f0bc2b2a40390be064c76fad4dc73b16f7d9003744ce3431be26363270b'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
