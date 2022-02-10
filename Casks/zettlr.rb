cask "zettlr" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.2.0"

  if Hardware::CPU.intel?
    sha256 "899102af5f6dd475148da8ad5dc6303251ff41f740c6c3d058994e4924bc3f7f"
  else
    sha256 "21d0b3bdf918ee0328edfe9e96809f55f2648ba0928e75e573e892a65c867ec9"
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
