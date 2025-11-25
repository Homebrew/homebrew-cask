cask "zo" do
  version "1.1.0"
  sha256 "ba36b18c9e34b5e459367bc17177e6f8ed18cc46f7ae078da57cd7067d8606ea"

  url "https://github.com/zocomputer/Zo/releases/download/v#{version}/Zo-#{version}-universal.dmg",
      verified: "github.com/zocomputer/Zo/"
  name "Zo"
  desc "Friendly personal server"
  homepage "https://www.zo.computer/"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Zo.app"

  zap trash: [
    "~/Library/Application Support/Zo",
    "~/Library/Preferences/computer.zo.desktop.plist",
  ]
end
