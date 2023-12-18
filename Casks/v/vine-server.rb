cask "vine-server" do
  version "5.3.2"
  sha256 "9cbea2f972b235029c9d68b15004e3d401668c3a24e86d60719eed26f2cc5a71"

  url "https://github.com/stweil/OSXvnc/releases/download/V#{version}/VineServer-#{version}.dmg"
  name "Vine Server"
  desc "VNC server"
  homepage "https://github.com/stweil/OSXvnc/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:[._]\d+)+)$/i)
    strategy :github_latest do |json, regex|
      json["tag_name"]&.scan(regex)&.map { |match| match[0].tr("_", ".") }
    end
  end

  depends_on macos: ">= :sierra"

  app "Vine Server.app"
  binary "#{appdir}/Vine Server.app/Contents/MacOS/OSXvnc-server"
  binary "#{appdir}/Vine Server.app/Contents/MacOS/storepasswd"
  binary "#{appdir}/Vine Server.app/Contents/MacOS/Vine Server"

  uninstall delete: "/Library/Application Support/VineServer"

  zap trash: "~/Library/Preferences/de.uni-mannheim.VineServer.plist"
end
