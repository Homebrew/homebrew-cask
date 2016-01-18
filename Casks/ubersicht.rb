cask 'ubersicht' do
  version '0.7.23'
  sha256 '9d0caa3cfe7f58c091f4398fe7180eb789aa1df1d22085703163a7d97f0c0327'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  appcast 'http://tracesof.net/uebersicht/updates.xml.rss',
          checkpoint: '3b2a0cb984b7a7e6d81f34e01b72b9df17479015d6b7ed82c33cadbf67880adb'
  name 'Übersicht'
  homepage 'http://tracesof.net/uebersicht'
  license :gpl

  app 'Übersicht.app'
end
