cask "vnc-server" do
  version "7.19.1"
  sha256 "251547261b610151f92e146feeb8a9f3c430baf1f25011ab8c7ca030e4fd8165"

  url "https://downloads.realvnc.com/download/file/vnc.files/VNC-Server-#{version}-MacOSX-universal.pkg"
  name "Real VNC Server"
  desc "Remote desktop server application"
  homepage "https://www.realvnc.com/"

  livecheck do
    url "https://help.realvnc.com/api/v2/help_center/en-us/sections/26441349091101/articles.json"
    regex(/RealVNC\s+Server\s+v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      json["articles"]&.map do |article|
        # Some releases are Windows/Linux only (e.g. 7.14.0)
        next if article["body"]&.match?(/release\s+is\s+for\s+(?:(?!mac)[^.<])+\s+only/i)

        match = article["title"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on :macos

  pkg "VNC-Server-#{version}-MacOSX-universal.pkg"

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
