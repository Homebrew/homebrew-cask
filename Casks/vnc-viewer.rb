cask 'vnc-viewer' do
  version '6.17.1113'
  sha256 '94372f5ce18e9432d6b9ebc082e1a655554c6ffbbfd90ea46580a520811aae77'

  url "https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-#{version}-MacOSX-x86_64.dmg"
  name 'Real VNC Viewer'
  homepage 'https://www.realvnc.com/'

  app 'VNC Viewer.app'

  zap trash: [
               '~/Library/Preferences/com.realvnc.vncviewer.plist',
               '~/Library/Saved Application State/com.realvnc.vncviewer.savedState',
             ]
end
