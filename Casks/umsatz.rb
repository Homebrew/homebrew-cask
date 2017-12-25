cask 'umsatz' do
  version '7.0'
  sha256 'b3b4c48106b9615a4f3f7db361432862d63ccec5dd91e52a07696c21290f26ec'

  # moapp.software was verified as official when first introduced to the cask
  url 'https://download.moapp.software/Umsatz.zip'
  appcast 'https://sparkle.moapp.software/umsatz.xml',
          checkpoint: 'c376278a20068a3f8d7e00aee7642d71a91236427a48371c292aa00df6ca653a'
  name 'Umsatz'
  homepage 'https://umsatz-programm.de/'

  app 'Umsatz.app'
end
