cask 'vuescan' do
  version '9.6.02'
  sha256 'fa7dc1babc03866b20d1c3ed5b325aa00d667527dad2db9822f67500ac6b300c'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: '9f143b1a0be1bbae50169ba36c5ba7139bdd57fd87607efadfac8c3aabb83484'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
