cask "zed-delta" do
  version "0.19.0"
  sha256 "7575a42a6e2ee8228600aeeba6422bc4fcc625195a4d5e58f256373e16112f88"

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
