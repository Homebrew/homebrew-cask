cask 'vuescan' do
  version '9.6.02'
  sha256 '48e1a43e6e1990e33b0894010474a594d0c41af62cc56136f76235d016c0bce0'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: '9f143b1a0be1bbae50169ba36c5ba7139bdd57fd87607efadfac8c3aabb83484'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
