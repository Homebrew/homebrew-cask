cask 'ubersicht' do
  version '0.7.24'
  sha256 '7c1cfbe1fd1331a13b372888a3af4aac8f8d999cb2bcadc259d76fc5a68a94cb'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  appcast 'http://tracesof.net/uebersicht/updates.xml.rss',
          checkpoint: '7f68f1cfdfe5c94d501b694a3fbbff80b09ebd23f7d3979cf06877e0b5b47fde'
  name 'Übersicht'
  homepage 'http://tracesof.net/uebersicht'
  license :gpl

  app 'Übersicht.app'
end
