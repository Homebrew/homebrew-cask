cask 'vuescan' do
  version '9.5.88'
  sha256 'e71ee71d83aff50933b2cb5121e5d878fd305b7ad54606f0d24c318ff9090f50'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: '31fce8f00d3b42d08370beccff4f8131ecfc8e21f24c2dbb579badca9c6f1618'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
