cask 'vuescan' do
  version '9.5.82'
  sha256 '6dc65687bc41a721ad6ff05d2f98bfffabd983064f240ae311901722bc8fec2b'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: 'cb79c782f7d4c997550dd4f35fbe96925034166966c7fce846d36ce72547b164'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
