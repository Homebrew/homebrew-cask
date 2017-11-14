cask 'yate' do
  version '3.17.3'
  sha256 '390fe9467c6f88169d59116ef63a04082895c8510adfbf9322f42c8cbec26199'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '3b3aaed6114daa051b61aa126782d5af2cdfc25827d39f136dad286384bd5311'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
