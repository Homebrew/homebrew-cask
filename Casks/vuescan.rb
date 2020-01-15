cask 'vuescan' do
  version '9.7.20'
  sha256 'a2bb4278f51971f91aa535f204fc1050de58488700468d5d14fd3e1cc57d79ee'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
