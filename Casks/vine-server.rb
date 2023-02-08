cask "vine-server" do
  version "5.3.1"
  sha256 "f3e22c807332df25ce2e37d06ff9552c973d69ee54d2ba9a376358d9d9337af2"

  url "https://github.com/stweil/OSXvnc/releases/download/V#{version.dots_to_underscores}/VineServer-#{version}.dmg"
  name "Vine Server"
  desc "VNC server"
  homepage "https://github.com/stweil/OSXvnc/"

  livecheck do
    url :url
    regex(%r{href=["']?[^"' >]*?/tag/[^"' >]*?(\d+(?:[._-]\d+)+[a-z]?)["' >]}i)
    strategy :github_latest do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
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
