cask 'yate' do
  version '3.16.1.1'
  sha256 '150f25418c697d6b10404162adedbea39f08c5aeb6b613cc139599c366c5ac70'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip',
      using: :post
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '579db922c90c77634accec79a3255f76c5cd3245be48804f59b5ceecee19cfd9'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
