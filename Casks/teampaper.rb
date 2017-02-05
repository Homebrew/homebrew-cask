cask 'teampaper' do
  version '2.0,8610'
  sha256 '8acd953f91273b08da1511a72472bb947c37b0907ff80152de51e995c7db09e1'

  url 'http://teampaper.me/snap/download/teampapersnap.dmg'
  appcast 'https://www.teampaper.me/sparkle/sparkle.xml',
          checkpoint: '2f477deb9b9b1eb2911395024627d6cb5e5588cd2a9be54d980cfe4c6db7c95e'
  name 'TeamPaper'
  homepage 'https://teampaper.me/snap/'

  app 'TeamPaper.app'
end
