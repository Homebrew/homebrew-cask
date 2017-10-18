cask 'yate' do
  version '3.17.2'
  sha256 'a7c143cbc48ebbbb72dde5fee994ff470d3b0d89cb16c216a6b3b6d62940613f'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '6b5abaff34209e42b7a3b241b419ba4b6b789a0c9adc0facba2388ba49921ee6'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
