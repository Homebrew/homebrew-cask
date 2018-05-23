cask 'yate' do
  version '4.0.1'
  sha256 '468cba8b536adfd16443f4d9727bbb070b9e7359cba8387f7e4b38c2c50050b2'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '10761db14f2b9b059a38024beaf6160910d731bec0ee5e81d93186fd4c43787e'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
