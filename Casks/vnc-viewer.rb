cask 'vnc-viewer' do
  version '6.20.529'
  sha256 'e7ef824169d7f6f0890f60e0431b22e00b066e1b105642b2a024e86053704f3f'

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
