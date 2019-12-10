cask 'vuescan' do
  version '9.7.11'
  sha256 '65e053227f7accca3fc39914dde96c79e352771fc15775a6d66b3c2d29e22f7a'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
