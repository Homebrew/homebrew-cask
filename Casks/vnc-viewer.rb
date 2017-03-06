cask 'vnc-viewer' do
  version '6.0.2'
  sha256 '8e4d4f92f7a266ce8a785918844a1c05f305ed85409a13e76c2658ae179a4192'

  url "https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-#{version}-MacOSX-x86_64.dmg"
  name 'Real VNC Viewer'
  homepage 'https://www.realvnc.com/'

  app 'VNC Viewer.app'

  zap delete: [
                '~/Library/Preferences/com.realvnc.vncviewer.plist',
                '~/Library/Saved Application State/com.realvnc.vncviewer.savedState',
              ]
end
