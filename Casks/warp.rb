cask "warp" do
  version "0.2023.03.21.08.02.stable_03"
  sha256 "6eed381720719c503a33aa3887808ad6efc5d2eb4e9e069b9e5325fcb6415cd5"

  url "https://app.warp.dev/download/brew?version=v#{version}"
  name "Warp"
  desc "Rust-based terminal"
  homepage "https://www.warp.dev/"

  livecheck do
    url "https://storage.googleapis.com/warp-releases/channel_versions.json"
    regex(/v(\d+(?:\.\d+)+\.stable_\d+)/i)
  end

  auto_updates true

  app "Warp.app"

  zap trash: [
    "~/Library/Application Support/dev.warp.Warp-Stable",
    "~/Library/Logs/warp.log",
    "~/Library/Preferences/dev.warp.Warp-Stable.plist",
  ]
end
