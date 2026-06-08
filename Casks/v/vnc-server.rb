cask "vnc-server" do
  version "7.17.0"
  sha256 "147092e514099a1b4d6a3ae53088a5c3bc6cd6498c5cf98d4d4022049cb3ff9e"

  url "https://downloads.realvnc.com/download/file/vnc.files/VNC-Server-#{version}-MacOSX-universal.pkg"
  name "Real VNC Server"
  desc "Remote desktop server application"
  homepage "https://www.realvnc.com/"

  # The upstream download page links to the latest pkg file but Cloudflare
  # protections prevent us from fetching it, so it must be checked manually:
  # https://www.realvnc.com/en/connect/download/vnc/macos/
  livecheck do
    skip "Cannot be fetched due to Cloudflare protections"
  end

  depends_on :macos

  pkg "VNC-Server-#{version}-MacOSX-universal.pkg"

  uninstall_preflight do
    file = "/Applications/RealVNC/Uninstall VNC Server.app/Contents/Resources/uninstaller.sh"
    system_command file, print_stderr: false, sudo: true if File.exist?(file)
  end

  uninstall launchctl: [
              "com.realvnc.vncagent.peruser",
              "com.realvnc.vncagent.prelogin",
              "com.realvnc.vncserver",
              "com.realvnc.vncserver.peruser",
            ],
            pkgutil:   [
              "com.realvnc.vncserver.1",
              "com.realvnc.vncserver.pkg",
            ]

  zap trash: [
    "/Library/Logs/vncserver.log.bak",
    "~/Library/Saved Application State/com.realvnc.vnclicensewiz.savedState",
    "~/Library/Saved Application State/com.realvnc.vncserver.savedState",
  ]
end
