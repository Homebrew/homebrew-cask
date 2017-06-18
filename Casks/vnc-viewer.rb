cask 'vnc-viewer' do
  version '6.1.1'
  sha256 'a7a6a8aecc657509957f840ef76b614b67f4dddaf7f2fd7849974a360bc3b4c0'

  url "https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-#{version}-MacOSX-x86_64.dmg"
  name 'Real VNC Viewer'
  homepage 'https://www.realvnc.com/'

  app 'VNC Viewer.app'

  zap delete: [
                '~/Library/Preferences/com.realvnc.vncviewer.plist',
                '~/Library/Saved Application State/com.realvnc.vncviewer.savedState',
              ]
end
