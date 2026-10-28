cask "zed-delta" do
  version "0.23.0"
  sha256 "dbfae2f8811701315c32085346359b5511c0e33743bf2a31873035afe192bb7d"

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
    "~/Library/Caches/delta-ipc",
    "~/Library/Preferences/com.zed-industries.delta.plist",
  ]
end
