cask 'vuescan' do
  version '9.7.18'
  sha256 'a107d03c2f9df03e2589ec8e1fa7404ecb14710d12a906effe1148ee7aa4c689'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
