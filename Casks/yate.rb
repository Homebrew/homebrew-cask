cask 'yate' do
  version '3.12'
  sha256 'f62d235272434ac206ae347392d82f2c8ff0cb52314343bb0ac0794703e880d9'

  url 'https://2manyrobots.com/Builds/Yate/Yate.dmg'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '50770d2e20a73b0d2cdbd4ad663650e3ee1d963431dfb23b803912df950573b8'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'
  license :commercial

  app 'Yate.app'
end
