cask 'vuescan' do
  version '9.7.12'
  sha256 '94725345a1e9d303e98f33f9dd45c7f2b8747f36a65fc08843378bd23a1153e1'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
