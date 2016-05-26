cask 'yate' do
  version '3.12'
  sha256 'be76bef9a01cc26261bc932b7718480722726b77d24404cc7a267261eb464af0'

  url 'https://2manyrobots.com/Builds/Yate/Yate.dmg'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '50770d2e20a73b0d2cdbd4ad663650e3ee1d963431dfb23b803912df950573b8'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'
  license :commercial

  app 'Yate.app'
end
