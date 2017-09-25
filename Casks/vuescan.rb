cask 'vuescan' do
  version '9.5.86'
  sha256 'e83b7212b658fd148fd2b4b21559b704ffb2fd9bf42ab9a37e1bbdab37a265ab'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: '7154c82944cc635229233bbdf0db27d8d4378cf900bdfd6a5fab84f3d23ae70b'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
