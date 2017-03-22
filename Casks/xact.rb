cask 'xact' do
  version '2.39'
  sha256 'c33feef2f4ff292c50b3b3ed74ab45ae31d692766610112028d6490d50756e62'

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  appcast 'http://xactupdate.scottcbrown.org/xACT.xml',
          checkpoint: 'fa6609d60f370b73dc848148371b97d1831cb94916592b79ca214eb78cc0c8ed'
  name 'xACT'
  homepage 'http://xact.scottcbrown.org/'

  app "xACT #{version}/xACT.app"
end
