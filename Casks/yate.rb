cask 'yate' do
  version '4.0'
  sha256 '232617d6f5e94b6419eccb44c50c5a91e8eb808c518c9d1ff095630e7f0c9407'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '87ef8387fb2658b56e4cae93528542bc55283bb89911b3999fc40cd67d6acff3'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
