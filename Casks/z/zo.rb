cask "zo" do
  version "1.5.5"
  sha256 "be8cc8f26b9b75d54930c18469c2c6e6cd710fa6781a92588f07e59a87eba1d0"

  url "https://github.com/zocomputer/Zo/releases/download/desktop-v#{version}/Zo-#{version}-universal-mac.zip",
      verified: "github.com/zocomputer/Zo/"
  name "Zo"
  desc "Friendly personal server"
  homepage "https://www.zo.computer/"

  auto_updates true
  depends_on macos: :big_sur

  app "Zo.app"

  zap trash: [
    "~/Library/Application Support/Zo",
    "~/Library/Preferences/computer.zo.desktop.plist",
  ]
end
