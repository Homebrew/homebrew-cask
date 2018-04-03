cask 'vuescan' do
  version '9.6.07'
  sha256 'ff8d3e1ddf02c4c2d440407c94cf357983ecc380c778c47c64857adffb768cef'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: '2868d502d8b23ea2568c23adc821bbbaf8813200b1b8c59f66d2642188da0e10'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
