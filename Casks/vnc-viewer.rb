cask 'vnc-viewer' do
  version '6.0.1'
  sha256 'd46233b489632faafc093e01ea1a100f3107babec487cc4cb4cd91cca5835ffe'

  url "https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-#{version}-MacOSX-x86_64.dmg"
  name 'Real VNC Viewer'
  homepage 'https://www.realvnc.com/'

  app 'VNC Viewer.app'

  zap delete: [
                '~/Library/Preferences/com.realvnc.vncviewer.plist',
                '~/Library/Saved Application State/com.realvnc.vncviewer.savedState',
              ]
end
