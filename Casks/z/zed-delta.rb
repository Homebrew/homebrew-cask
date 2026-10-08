cask "zed-delta" do
  version "0.19.1"
  sha256 "105568d40c0442d4c5f5af3eef4a78e729dbf46c2bc54bdc5ff5b47722748989"

  url "https://releases.delta.dev/releases/stable/#{version}/macos/aarch64/Delta.app.zip"
  name "Delta"
  desc "Multiplayer environment for coding with agents"
  homepage "https://delta.dev/"

  livecheck do
    url "https://delta.dev/api/releases/stable/latest/asset?asset=delta&os=macos&arch=aarch64"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Delta.app"

  uninstall quit: "com.zed-industries.delta"

  zap trash: [
    "~/.config/delta",
    "~/Library/Application Support/delta",
    "~/Library/Preferences/com.zed-industries.delta.plist",
  ]
end
