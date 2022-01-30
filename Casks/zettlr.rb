cask "zettlr" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.1.3"

  if Hardware::CPU.intel?
    sha256 "5af35a503b50d38e79eb154377f4bb712190890f4a8cecdb267bdfc991d19104"
  else
    sha256 "a41311578c33935d8052268ed241b590018276544b13707145b122c7f6face1b"
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
