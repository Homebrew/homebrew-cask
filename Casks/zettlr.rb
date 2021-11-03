cask "zettlr" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.0.2"

  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "3d111e4328e06f4e23f6ef418ab91c4081f316861c1fef3117d70a16fb92b7b7"
  else
    sha256 "e5b40a584207323eb92b98c303f53767b4db9c908a4d0e50aaab9eff909c918d"
  end

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
