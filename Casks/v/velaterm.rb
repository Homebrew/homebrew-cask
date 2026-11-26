cask "velaterm" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.3.7"
  sha256 arm:   "ff80dde474214f4c476e90ca18dd5e1192bdcc0252610a4fe3d5acd60331bbfa",
         intel: "bf7927ab8255c5724100b0e6ce959e6a66f1e8019c6d9687c324fa4c4b597a36"

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
