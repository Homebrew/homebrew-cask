cask "zen-browser" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.0-a.26"
  sha256 arm:   "acba4a1e47d49de0d9c3cb428ab30b4552eeb4ac4f5a4418952a1d484d56474b",
         intel: "25b4633da8b9622e8e8a671e7be9837fb9e17a5c571debc15749fb5ff0bc0397"

  url "https://github.com/zen-browser/desktop/releases/download/#{version}/zen.macos-#{arch}.dmg",
      verified: "github.com/zen-browser/desktop/"
  name "Zen Browser"
  desc "Fully open-source browser based on the Firefox engine"
  homepage "https://www.zen-browser.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Zen Browser.app"

  zap trash: [
    "~/Library/Application Support/zen",
    "~/Library/Caches/zen",
    "~/Library/Preferences/org.mozilla.com.zen.browser.plist",
    "~/Library/Saved Application State/org.mozilla.com.zen.browser.savedState",
  ]

  caveats <<~EOS
    According to https://github.com/zen-browser/desktop/issues/53
    this app will not work with quarantine attributes.
  EOS
end
