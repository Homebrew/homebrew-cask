cask 'teampaper' do
  version '2.0,8610'
  sha256 '8acd953f91273b08da1511a72472bb947c37b0907ff80152de51e995c7db09e1'

  url "https://www.teampaper.me/sparkle/teampaper#{version.after_comma}.zip"
  appcast 'https://www.teampaper.me/sparkle/sparkle.xml',
          checkpoint: '2f477deb9b9b1eb2911395024627d6cb5e5588cd2a9be54d980cfe4c6db7c95e'
  name 'TeamPaper'
  homepage 'http://teampaper.me/'

  app 'TeamPaper.app'
end
