cask 'yate' do
  version '3.12'
  sha256 '7ffc7ce3d342485b9631849c3e074eddbfc3f6f3f702944c18fcf071cfb16367'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '50770d2e20a73b0d2cdbd4ad663650e3ee1d963431dfb23b803912df950573b8'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'
  license :commercial

  app 'Yate.app'
end
