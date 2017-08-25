cask 'xact' do
  version '2.40'
  sha256 '25466ec73a00de87db9f0c45926d55c4ced50444e5739f92456e329390054434'

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  appcast 'http://xactupdate.scottcbrown.org/xACT.xml',
          checkpoint: 'fa6609d60f370b73dc848148371b97d1831cb94916592b79ca214eb78cc0c8ed'
  name 'xACT'
  homepage 'http://xact.scottcbrown.org/'

  app "xACT #{version}/xACT.app"
end
