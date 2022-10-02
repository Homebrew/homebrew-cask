cask "tabby" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.184"
  sha256 arm:   "aaded8ac525b6a3945f06a789e018368c95112874d6985a34ac8705d1f8eaa74",
         intel: "c670121c84f19eab809e286f27c4d9922722262cfa4b9611d24cedd347f6808d"

  url "https://github.com/Eugeny/tabby/releases/download/v#{version}/tabby-#{version}-macos-#{arch}.zip",
      verified: "github.com/Eugeny/tabby/"
  name "Tabby"
  name "Terminus"
  desc "Terminal emulator, SSH and serial client"
  homepage "https://eugeny.github.io/tabby/"

  livecheck do
    url "https://github.com/Eugeny/tabby/releases/latest"
    strategy :header_match
  end

  auto_updates true

  app "Tabby.app"

  zap trash: [
    "~/Library/Application Support/tabby",
    "~/Library/Preferences/org.tabby.helper.plist",
    "~/Library/Preferences/org.tabby.plist",
    "~/Library/Saved Application State/org.tabby.savedState",
  ]
end
