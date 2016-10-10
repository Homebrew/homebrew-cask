cask 'vnc-viewer' do
  version '5.3.2'
  sha256 'bb65a0d71abde86af6cd7bd4f4ed0a935f6e6b60164269904c1a4fbef8be3fb4'

  url "https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-#{version}-MacOSX-x86_64.dmg"
  name 'Real VNC Viewer'
  homepage 'https://www.realvnc.com/'

  app 'VNC Viewer.app'

  zap delete: [
                '~/Library/Preferences/com.realvnc.vncviewer.plist',
                '~/Library/Saved Application State/com.realvnc.vncviewer.savedState',
              ]
end
