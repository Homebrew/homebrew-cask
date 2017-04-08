cask 'vuescan' do
  version '9.5.72'
  sha256 '83bc294956d7220b3f7737a6131c118f40dfd7d66715f5cd854faff645c02302'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: '33c0355f8b17951c95777e1230f738c5173616b3fbb9687c43baf3a4e0c68c30'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
