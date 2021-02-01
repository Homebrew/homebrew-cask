cask "vine-server" do
  version "5.3.0"
  sha256 "0b82154ebff425e2d6374ee00ba75f00ba2fd0342843b7760413450d5345c6ca"

  url "https://github.com/stweil/OSXvnc/releases/download/V#{version.dots_to_underscores}/VineServer-#{version}.dmg"
  name "Vine Server"
  desc "VNC server"
  homepage "https://github.com/stweil/OSXvnc/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/VineServer-(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "Vine Server.app"
  binary "#{appdir}/Vine Server.app/Contents/MacOS/OSXvnc-server"
  binary "#{appdir}/Vine Server.app/Contents/MacOS/storepasswd"
  binary "#{appdir}/Vine Server.app/Contents/MacOS/Vine Server"

  uninstall delete: "/Library/Application Support/VineServer"

  zap trash: "~/Library/Preferences/de.uni-mannheim.VineServer.plist"
end
