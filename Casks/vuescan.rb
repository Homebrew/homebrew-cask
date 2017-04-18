cask 'vuescan' do
  version '9.5.73'
  sha256 '0aa8f38a0c70a3fd7d226f584d65083fd82abc09644ce4938aa5a0832fe36165'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: 'e8d0f5888e2dc916718208c528746602c57e31ad2d743c8324fea7dc11744edf'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
