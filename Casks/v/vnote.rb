cask "vnote" do
  version "4.5.0"
  sha256 "56cdc30ee70f79fe504e49cdd31b5975083072e3c8c446c6bc04735dfc973ca8"

  url "https://github.com/vnotex/vnote/releases/download/v#{version}/VNote-#{version}-mac-universal.dmg"
  name "VNote"
  desc "Note-taking platform"
  homepage "https://docs.vnote.fun/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :monterey

  app "VNote.app"

  zap trash: [
    "~/Library/Application Support/VNote",
    "~/Library/Preferences/com.vnotex.vnote.plist",
    "~/Library/Preferences/VNote",
  ]
end
