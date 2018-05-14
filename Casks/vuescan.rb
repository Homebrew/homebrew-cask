cask 'vuescan' do
  version '9.6.08'
  sha256 'eece89084208805a1af1148838c3a05eac8d63de7a388d8ddd60001fcb56bf75'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: '15fa66b0edcc50fe97bc95845841ee2ba6ab4416efaecb360cb76b3398b33fa3'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
