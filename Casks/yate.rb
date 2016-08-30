cask 'yate' do
  version '3.14'
  sha256 'bb810ba3634d5d10b2a2994c1d4fa4e3826570bbe5a66dc07c2345a195562276'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip',
      using: :post
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: 'e3617051442a1b251f1a9f5cff351eabbc3c001e637aff924a0d767311d59c27'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'
  license :commercial

  app 'Yate.app'
end
