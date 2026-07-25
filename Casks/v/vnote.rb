cask "vnote" do
  version "4.2.0"
  sha256 "0dfaaa7e1959d6325be466335db70e34232cfc05b068f6b5146b4ff135fce204"

  url "https://github.com/vnotex/vnote/releases/download/v#{version}/VNote-#{version}-mac-universal.zip",
      verified: "github.com/vnotex/vnote/"
  name "VNote"
  desc "Note-taking platform"
  homepage "https://vnotex.github.io/vnote/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :monterey

  app "VNote.app"

  zap trash: [
    "~/Library/Application Support/VNote",
    "~/Library/Preferences/com.vnotex.vnote.plist",
    "~/Library/Preferences/VNote",
  ]
end
