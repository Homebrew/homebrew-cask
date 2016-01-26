cask 'yate' do
  version '3.10'
  sha256 '0e91a895d4b5615fe65ce6a1a5b2e928e73de41e3b1c1750bf4b12e6106ad8ba'

  url 'https://2manyrobots.com/Builds/Yate/Yate.dmg'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '2ee3046d2801acdb58793da6c666563ff1d66aa1be506967bd8817be9bc1e7c8'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'
  license :commercial

  app 'Yate.app'
end
