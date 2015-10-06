cask :v1 => 'yate' do
  version :latest
  sha256 :no_check

  url 'https://2manyrobots.com/Builds/Yate/Yate.dmg'
  name 'Yate'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          :sha256 => '9d7750eb46d2b3e17e5a9f1b42e2b46bc15073a51caaae61c01d2a7d84a4c519'
  homepage 'https://2manyrobots.com/yate/'
  license :commercial

  app 'Yate.app'
end
