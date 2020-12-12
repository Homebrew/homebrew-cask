cask "vnc-server" do
  version "6.7.2"
  sha256 "a3170bd20a8c496ea2ae83f240ead6a1961853bb8b9c05b59a46db58781c6628"

  url "https://www.realvnc.com/download/file/vnc.files/VNC-Server-#{version}-MacOSX-x86_64.pkg"
  appcast "https://www.realvnc.com/en/connect/download/vnc/macos/"
  name "Real VNC Server"
  homepage "https://www.realvnc.com/"

  pkg "VNC-Server-#{version}-MacOSX-x86_64.pkg"

  uninstall_preflight do
    system_command "/Applications/RealVNC/Uninstall VNC Server.app/Contents/Resources/uninstaller.sh",
                   print_stderr: false, sudo: true
  end

  uninstall launchctl: [
    "com.realvnc.vncserver",
    "com.realvnc.vncserver.peruser",
  ],
            pkgutil:   [
              "com.realvnc.vncserver.pkg",
            ]

  zap trash: [
    "/Library/Logs/vncserver.log.bak",
    "~/Library/Saved Application State/com.realvnc.vnclicensewiz.savedState",
    "~/Library/Saved Application State/com.realvnc.vncserver.savedState",
  ]
end
