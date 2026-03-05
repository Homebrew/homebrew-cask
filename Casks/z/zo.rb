cask "zo" do
  version "1.2.1"
  sha256 "79fcb6494f98ce981a40bdca307578c325d5eafb8f036a83bb69ca3edafe562e"

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
