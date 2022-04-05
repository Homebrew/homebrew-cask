cask "warp" do
  version "0.2022.04.01.01.37"
  sha256 :no_check

  url "https://app.warp.dev/download"
  name "Warp"
  desc "Blazingly fast, Rust-based terminal"
  homepage "https://www.warp.dev/"

  livecheck do
    url "https://docs.warp.dev/help/changelog"
    regex(/\(v?(\d+(?:\.\d+)+)\)/i)
  end

  auto_updates true

  app "Warp.app"

  zap trash: ["~/Library/Preferences/dev.warp.Warp-Stable.plist",
              "~/Library/Application\ Support/dev.warp.Warp-Stable/"]
end
