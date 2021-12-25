cask "zettlr" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.1.0"

  if Hardware::CPU.intel?
    sha256 "1b4cb11eb27374f622546b26477b162908da3c17d3d0c1cff90d6e59c07a1181"
  else
    sha256 "19c8e5471ba6b5dbdb752a8241a3574f9cb0d119622d93653c320a4deef45519"
  end

  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-#{arch}.dmg"
  name "Zettlr"
  desc "Open-source markdown editor"
  homepage "https://github.com/Zettlr/Zettlr/"

  app "Zettlr.app"

  zap trash: [
    "~/Library/Application Support/zettlr",
    "~/Library/Logs/Zettlr",
    "~/Library/Preferences/com.zettlr.app.plist",
    "~/Library/Saved Application State/com.zettlr.app.savedState",
  ]
end
