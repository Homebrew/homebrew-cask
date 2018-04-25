cask 'vuescan' do
  version '9.6.07'
  sha256 'ea248263b3039fb0849f7756d95c8bc1745271223d4fa8fd40bc7c7ed98ed7ab'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: '2868d502d8b23ea2568c23adc821bbbaf8813200b1b8c59f66d2642188da0e10'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
