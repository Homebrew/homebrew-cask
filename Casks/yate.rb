cask 'yate' do
  version '3.10'
  sha256 '0e91a895d4b5615fe65ce6a1a5b2e928e73de41e3b1c1750bf4b12e6106ad8ba'

  url 'https://2manyrobots.com/Builds/Yate/Yate.dmg'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          :sha256 => 'ba100fd0990c0079fe74d7ab75d3d2c33ef3040fe68a51f1f4516af67ed0fe22'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'
  license :commercial

  app 'Yate.app'
end
