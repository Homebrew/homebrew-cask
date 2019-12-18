cask 'vuescan' do
  version '9.7.13'
  sha256 '4943794b7e36c0a3cd735057470f3eea2baa89f2a4090f28228f442d4c3cc71a'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
