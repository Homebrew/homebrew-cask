cask "zo" do
  version "1.3.3"
  sha256 "0e9f2667e8e20e6c293c92e35af7c47e32025e445c2ed7156ed344d07478b69c"

  url "https://github.com/zocomputer/Zo/releases/download/v.#{version}/Zo-#{version}-universal-mac.zip",
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
