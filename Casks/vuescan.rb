cask 'vuescan' do
  version '9.6.09'
  sha256 '0a32afbd83e90eb39613ce1322df6b6fd3e3792ba2bc5f2e94f53a7440c0459f'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: 'a075a05ef70015aede6012e2049bee95678cd558596e4e8fb20248df988a5006'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
