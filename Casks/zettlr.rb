cask "zettlr" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.2.5"

  if Hardware::CPU.intel?
    sha256 "0a08106977ff0a17a1656a71f74d83713c1ff7a5d965466ce2724a5173cd8e61"
  else
    sha256 "2f28a2fc1452cc39c6ca761ae179cb230efcb12ed239d346215ba19705b9134f"
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
