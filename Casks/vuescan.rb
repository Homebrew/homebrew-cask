cask 'vuescan' do
  version '9.5.77'
  sha256 'fa24e4544100dab9da6634a34787b0cbac680dc04b77eff230dca84705c3cf5e'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: 'd8bc6eb834aef316a39208adac3cebfcd0e2b1f45c4eb9935f2859a459787506'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
