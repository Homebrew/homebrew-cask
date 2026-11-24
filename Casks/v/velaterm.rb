cask "velaterm" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.3.6"
  sha256 arm:   "c47a67cf398c05256865daa1fe1053a3ac8cdd459af188cc75f1dd56458265e5",
         intel: "4f295650309dc7fbd5c5ffe8c26464b9e60f0ffd9c518e14ddc2fa44142d46c0"

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
