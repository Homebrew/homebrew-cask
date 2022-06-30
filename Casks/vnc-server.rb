cask "vnc-server" do
  version "6.9.1"
  sha256 "f2a38ec0f77775236ee172e87f1e3460f9f7c10ec52f514135c275008c40940f"

  url "https://www.realvnc.com/download/file/vnc.files/VNC-Server-#{version}-MacOSX-x86_64.pkg"
  name "Real VNC Server"
  desc "Remote desktop server application"
  homepage "https://www.realvnc.com/"

  livecheck do
    url "https://www.realvnc.com/en/connect/download/vnc/macos/"
    regex(%r{href=.*?/VNC-Server-(\d+(?:\.\d+)*)-MacOSX-x86_64\.pkg}i)
  end

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
