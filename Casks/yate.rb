cask 'yate' do
  version :latest
  sha256 :no_check

  url 'https://2manyrobots.com/Builds/Yate/Yate.dmg'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          :sha256 => 'dcffb9d2f0b19ef6427906fa1f742d546166f214fcc6d0ae0b423e19a146d8c0'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'
  license :commercial

  app 'Yate.app'
end
