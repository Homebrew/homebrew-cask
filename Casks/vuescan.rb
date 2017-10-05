cask 'vuescan' do
  version '9.5.88'
  sha256 '93e7b8e51042242dcb7af0067787db31d3e47482eb7399b39b59c4c5e3cdd12f'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: '31fce8f00d3b42d08370beccff4f8131ecfc8e21f24c2dbb579badca9c6f1618'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
