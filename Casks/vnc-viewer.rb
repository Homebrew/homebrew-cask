cask 'vnc-viewer' do
  version '6.0.3'
  sha256 '24fe7cfe21516fdb85f9d51af3110dd9922fc57c7236175d49dcf8535b3fc671'

  url "https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-#{version}-MacOSX-x86_64.dmg"
  name 'Real VNC Viewer'
  homepage 'https://www.realvnc.com/'

  app 'VNC Viewer.app'

  zap delete: [
                '~/Library/Preferences/com.realvnc.vncviewer.plist',
                '~/Library/Saved Application State/com.realvnc.vncviewer.savedState',
              ]
end
