cask "zettlr" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.2.3"

  if Hardware::CPU.intel?
    sha256 "f0048c746dbfc2fbe9b26e2ece063ce622ee139491aecfe052cc73c2cd6e8cb7"
  else
    sha256 "85b256f1fc1a8603bc0a3d13cb51ba5197df4f139ef5b7057660633e5cd37700"
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
