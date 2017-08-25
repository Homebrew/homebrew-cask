cask 'xact' do
  version '2.40'
  sha256 '25466ec73a00de87db9f0c45926d55c4ced50444e5739f92456e329390054434'

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  appcast 'http://xactupdate.scottcbrown.org/xACT.xml',
          checkpoint: '95e91191e16dd18be47b2462fc861a78cdf47a85ec000f40577a7f246c335395'
  name 'xACT'
  homepage 'http://xact.scottcbrown.org/'

  app "xACT #{version}/xACT.app"
end
