cask 'yate' do
  version '3.12'
  sha256 '6611b12ef7336e1add86e35345aa2605fde79248c23354736a14384482a72eff'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip',
      user_agent: :fake
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '50770d2e20a73b0d2cdbd4ad663650e3ee1d963431dfb23b803912df950573b8'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'
  license :commercial

  app 'Yate.app'
end
