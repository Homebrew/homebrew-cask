cask 'vuescan' do
  version '9.5.64'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: 'd6e88549f481993c8bfe21a551c5a19e7d6fe83a7a0b5010ee5b3ff99ef49ca4'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
