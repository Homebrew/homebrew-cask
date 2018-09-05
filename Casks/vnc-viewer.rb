cask 'vnc-viewer' do
  version '6.18.625'
  sha256 'feed052f9e889b493ef22aead3789854019fe363ab242dd7a5196a6caacf18b7'

  url "https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-#{version}-MacOSX-x86_64.dmg"
  name 'Real VNC Viewer'
  homepage 'https://www.realvnc.com/'

  app 'VNC Viewer.app'

  zap trash: [
               '~/Library/Preferences/com.realvnc.vncviewer.plist',
               '~/Library/Saved Application State/com.realvnc.vncviewer.savedState',
             ]
end
