cask 'vnc-viewer' do
  version '6.19.715'
  sha256 'c779c80bd4050ec848529af98fc904387666cec25f88c166e667128ba4787424'

  url "https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-#{version}-MacOSX-x86_64.dmg"
  appcast 'https://www.realvnc.com/en/connect/download/viewer/macos/'
  name 'Real VNC Viewer'
  homepage 'https://www.realvnc.com/'

  app 'VNC Viewer.app'

  zap trash: [
               '~/Library/Preferences/com.realvnc.vncviewer.plist',
               '~/Library/Saved Application State/com.realvnc.vncviewer.savedState',
             ]
end
