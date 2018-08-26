cask 'vuescan' do
  version '9.6.14'
  sha256 '4358a7fe6ece787af68700915ebec034f4f1d60eabffe49b4c7d4c8a3cff1403'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
