cask "velaterm" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.3.5"
  sha256 arm:   "f52d7bb24a19fb5ea47533b8a20bbe0852c0a079153452783821ddef79ece8e1",
         intel: "16501c8af1fbc77e975a9c32ac1b971099c537dd2301b82a3dcf32d7382655b0"

  url "https://dl.velaterm.com/#{version}/VelaTerm_#{version}_#{arch}.dmg"
  name "VelaTerm"
  desc "Terminal multiplexer and agentic development environment for AI coding agents"
  homepage "https://velaterm.com/"

  livecheck do
    url "https://velaterm.com/api/downloads"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on :macos

  app "VelaTerm.app"

  uninstall quit: "io.vlinx.vlxterm.release"

  zap trash: [
    "~/Library/Application Support/io.vlinx.vlxterm.release",
    "~/Library/Caches/io.vlinx.vlxterm.release",
    "~/Library/Preferences/io.vlinx.vlxterm.release.plist",
    "~/Library/Saved Application State/io.vlinx.vlxterm.release.savedState",
    "~/Library/WebKit/io.vlinx.vlxterm.release",
  ]
end
