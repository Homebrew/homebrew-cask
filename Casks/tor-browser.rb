cask "tor-browser" do
  version "12.0"
  sha256 "11c8360187356e6c0837612a320f1a117303fc449602c9fd73f4faf9f9bbcfc9"

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
