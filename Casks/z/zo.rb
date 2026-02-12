cask "zo" do
  version "1.1.2"
  sha256 "1377adc81708aa611e5d4ec7f02854919b24f163a0eddebc5f6927c0afc3a8bf"

  url "https://github.com/zocomputer/Zo/releases/download/v#{version}/Zo-#{version}-universal-mac.zip",
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
