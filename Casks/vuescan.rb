cask 'vuescan' do
  version '9.6.16'
  sha256 '93598183343f7e0c7c7b13331e7f1151bf997eaa197389276a13efaf74b3fc89'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
