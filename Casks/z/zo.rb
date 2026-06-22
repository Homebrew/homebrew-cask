cask "zo" do
  version "1.5.6"
  sha256 "69f3a6055a4911d802b0a89f40d69f3a863937a46665b08b65ca73ae2cda77c1"

  url "https://github.com/zocomputer/Zo/releases/download/v#{version}/Zo-#{version}-universal-mac.zip",
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
