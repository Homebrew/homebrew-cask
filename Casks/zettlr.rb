cask "zettlr" do
  version "1.8.6"

  if Hardware::CPU.intel?
    sha256 "a51ee7121af7be8dfb0e3035f2ee0081954271c7e53bd9cc423154966f1cd0b8"
    url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-x64.dmg",
        verified: "github.com/Zettlr/Zettlr/"
  else
    sha256 "029efa9021d123ab83a4e6045296adc87766ef904f2c5a9da08cecb4fd2f934f"
    url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-arm64.dmg",
        verified: "github.com/Zettlr/Zettlr/"
  end

  appcast "https://github.com/Zettlr/Zettlr/releases.atom"
  name "Zettlr"
  desc "Open-source markdown editor"
  homepage "https://www.zettlr.com/"

  app "Zettlr.app"

  zap trash: [
    "~/Library/Application Support/zettlr",
    "~/Library/Logs/Zettlr",
    "~/Library/Preferences/com.zettlr.app.plist",
    "~/Library/Saved Application State/com.zettlr.app.savedState",
  ]
end
