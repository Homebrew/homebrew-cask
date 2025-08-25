cask "warpkey-app" do
  version "2.0.2"
  sha256 "58abadfab929b5ef595328afa388e05cae9d7d0f87ddcc7c011b84b9bae95f71"

  url "https://github.com/musamatini/WarpKey/releases/download/v#{version}/WarpKey-Universal-Stable-v#{version}.zip"
  name "WarpKey"
  desc "Keyboard-centric application and window switcher"
  homepage "https://github.com/musamatini/WarpKey/"
  depends_on macos: ">= :ventura"
  auto_updates true

  app "WrapKey.app"

  zap trash: [
    "~/Library/Application Support/WarpKey",
    "~/Library/Caches/dev.WarpKey",
    "~/Library/Preferences/dev.WarpKey.plist",
  ]
end
