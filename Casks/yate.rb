cask :v1 => 'yate' do
  version :latest
  sha256 :no_check

  url 'http://2manyrobots.com/Builds/Yate/Yate.dmg'
  name 'Yate'
  appcast 'http://2manyrobots.com/Updates/Yate/appcast.xml',
          :sha256 => 'dcffb9d2f0b19ef6427906fa1f742d546166f214fcc6d0ae0b423e19a146d8c0'
  homepage 'http://2manyrobots.com/yate/'
  license :commercial

  app 'Yate.app'
end
