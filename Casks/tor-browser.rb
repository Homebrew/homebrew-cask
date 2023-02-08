cask "tor-browser" do
  version "12.0.2"
  sha256 "c6968a7041890de6ac344e9163ce0a1c0fb82394a2da9d4e7f77e0bce7a1c952"

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-macos_ALL.dmg"
  name "Tor Browser"
  desc "Web browser focusing on security"
  homepage "https://www.torproject.org/"

  livecheck do
    url "https://www.torproject.org/download/"
    regex(%r{href=.*?/TorBrowser[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-].*\.dmg}i)
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/tor-browser-alpha"

  app "Tor Browser.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.tor browser.sfl*",
    "~/Library/Application Support/TorBrowser-Data",
    "~/Library/Preferences/org.mozilla.tor browser.plist",
    "~/Library/Preferences/org.torproject.torbrowser.plist",
    "~/Library/Saved Application State/org.torproject.torbrowser.savedState",
  ]
end
