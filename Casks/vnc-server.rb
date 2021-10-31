cask "vnc-server" do
  version "6.8.0"
  sha256 "17f5d68ab4552066659f5e31fdd9f8c498f2e1b93473e5a277db31632b69c1c0"

  url "https://www.realvnc.com/download/file/vnc.files/VNC-Server-#{version}-MacOSX-x86_64.pkg"
  name "Real VNC Server"
  desc "Remote desktop server application"
  homepage "https://www.realvnc.com/"

  livecheck do
    url "https://www.realvnc.com/en/connect/download/vnc/macos/"
    strategy :page_match
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
