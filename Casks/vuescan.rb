cask 'vuescan' do
  version '9.5.78'
  sha256 '436fdf63e057f8f2e6feecebd45f34c11b2083cd8eff52e12c3a4664dbdb064b'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: 'a1d48b72f23eb8141ae2544a1b868de1a15f0071410ce7a8ff67734cd5ab31d6'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
