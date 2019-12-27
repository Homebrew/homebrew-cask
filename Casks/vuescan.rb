cask 'vuescan' do
  version '9.7.15'
  sha256 'fe6c175a31d1bb6f25db9065ae0a9697c0f860419bd2e399e778aeb3f37123d4'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
