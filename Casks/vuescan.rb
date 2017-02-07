cask 'vuescan' do
  version '9.5.68'
  sha256 'f5178c545ef774fa3388151d91d450fe3d64d0072cabf0c193767d57eb5af1d5'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: 'b03bf18d13f1c6f90aa7b8eef0cfeac211eee8a922b9fee926c05d56a1eb0a34'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
