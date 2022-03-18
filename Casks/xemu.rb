cask "xemu" do
  version "0.6.2-84-gcd5d3df626"
  sha256 "e715e6d01e9ccf5b59c2b468d654d5d981f640cd662cb4b2df7f736f2ca60783"

  url "https://github.com/mborgerson/xemu/releases/download/gh-release%2F#{version}/xemu-macos-universal-release.zip",
      verified: "github.com/mborgerson/xemu/"
  name "Xemu"
  desc "Original Xbox Emulator"
  homepage "https://xemu.app/"

  livecheck do
    regex(%r{gh-release/(.*)}i)
  end

  app "Xemu.app"

  zap trash: [
    "~/Library/Application Support/xemu",
    "~/Library/Preferences/xemu.app.0.plist",
    "~/Library/Saved Application State/xemu.app.0.savedState",
  ]
end
