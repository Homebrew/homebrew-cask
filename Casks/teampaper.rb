cask 'teampaper' do
  version '2.0.8610'
  sha256 'bb0911addcc22462ebf826137c049411a9b6215cf80917939e592d9e5065435c'

  url 'http://teampaper.me/snap/download/teampapersnap.dmg'
  appcast 'https://www.teampaper.me/sparkle/sparkle.xml',
          checkpoint: '2f477deb9b9b1eb2911395024627d6cb5e5588cd2a9be54d980cfe4c6db7c95e'
  name 'TeamPaper'
  homepage 'https://teampaper.me/snap/'

  app 'TeamPaper.app'
end
