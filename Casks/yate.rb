cask 'yate' do
  version '3.10'
  sha256 '0e91a895d4b5615fe65ce6a1a5b2e928e73de41e3b1c1750bf4b12e6106ad8ba'

  url 'https://2manyrobots.com/Builds/Yate/Yate.dmg'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          :sha256 => 'c679b9ea8aa4d7634e5b8104c6db125ea223dd814736bca8e2f5053965ac4b9a'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'
  license :commercial

  app 'Yate.app'
end
