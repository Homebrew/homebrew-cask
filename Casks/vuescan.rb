cask 'vuescan' do
  version '9.6.14'
  sha256 'b50332c09ee0f1f2de54f54a90cde0ada1d00b3da8139801f815d3a45d9d5130'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
