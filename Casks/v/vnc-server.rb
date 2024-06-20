cask "vnc-server" do
  version "7.12.0"
  sha256 "4c8032af37f6f1fa856a42985f32d53bd097cbec2bd40b6f59227dc09172598f"

  url "https://downloads.realvnc.com/download/file/vnc.files/VNC-Server-#{version}-MacOSX-universal.pkg"
  name "Real VNC Server"
  desc "Remote desktop server application"
  homepage "https://www.realvnc.com/"

  livecheck do
    url "https://www.realvnc.com/en/connect/download/vnc/macos/"
    regex(%r{href=.*?/VNC[._-]Server[._-]v?(\d+(?:\.\d+)*)[._-]MacOSX[._-]universal\.pkg}i)
  end

  pkg "VNC-Server-#{version}-MacOSX-universal.pkg"

  uninstall_preflight do
    system_command "/Applications/RealVNC/Uninstall VNC Server.app/Contents/Resources/uninstaller.sh",
                   print_stderr: false, sudo: true
  end

  uninstall launchctl: [
              "com.realvnc.vncserver",
              "com.realvnc.vncserver.peruser",
            ],
            pkgutil:   "com.realvnc.vncserver.pkg"

  zap trash: [
    "/Library/Logs/vncserver.log.bak",
    "~/Library/Saved Application State/com.realvnc.vnclicensewiz.savedState",
    "~/Library/Saved Application State/com.realvnc.vncserver.savedState",
  ]
end
