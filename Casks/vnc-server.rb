cask 'vnc-server' do
  version '6.4.0'
  sha256 'c71b3e53b3477aec1a7c4a228b4ba0a728d151214e0f3c750d97cd73dff0470b'

  url "https://www.realvnc.com/download/file/vnc.files/VNC-Server-#{version}-MacOSX-x86_64.pkg"
  name 'Real VNC Server'
  homepage 'https://www.realvnc.com/'

  pkg "VNC-Server-#{version}-MacOSX-x86_64.pkg"

  uninstall_preflight do
    system_command '/Applications/RealVNC/Uninstall VNC Server.app/Contents/Resources/uninstaller.sh', print_stderr: false, sudo: true
  end

  uninstall launchctl: [
                         'com.realvnc.vncserver',
                         'com.realvnc.vncserver.peruser',
                       ],
            pkgutil:   [
                         'com.realvnc.vncserver.pkg',
                       ]

  zap trash: [
               '/Library/Logs/vncserver.log.bak',
               '~/Library/Saved Application State/com.realvnc.vnclicensewiz.savedState',
               '~/Library/Saved Application State/com.realvnc.vncserver.savedState',
             ]
end
