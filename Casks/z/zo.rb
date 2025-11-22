cask "zo" do
  version "1.0.12"
  sha256 "f0a8485385f2c511c356a4de69d996df78c1ed070622a9543ea9ae4899719aee"

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
