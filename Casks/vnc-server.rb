cask 'vnc-server' do
  version '6.4.1'
  sha256 'b3a44709ccbdbdd6b734c75153d0faf6612edd96e633e3d4f27438ea6a95b4fe'

  url "https://www.realvnc.com/download/file/vnc.files/VNC-Server-#{version}-MacOSX-x86_64.pkg"
  appcast 'https://www.realvnc.com/en/connect/download/vnc/macos/'
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
