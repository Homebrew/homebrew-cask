cask "zo" do
  version "1.5.7"
  sha256 "51d02153b0918c2b8e89e467d6650799bd63099249e8a650062ec73bec98db57"

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
