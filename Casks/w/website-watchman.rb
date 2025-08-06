cask "website-watchman" do
  version "3.3.1"
  sha256 :no_check

  url "https://peacockmedia.software/mac/watchman/watchman.dmg"
  name "Website Watchman"
  desc "Monitor a whole website, part of a website or a single page"
  homepage "https://peacockmedia.software/mac/watchman/"

  livecheck do
    url :homepage
    regex(/Version\s+(\d+(?:\.\d+)+)\s*released/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Website Watchman.app"

  zap trash: [
    "~/Library/Application Support/Watchman",
    "~/Library/Caches/com.peacockmedia.watchtower",
    "~/Library/HTTPStorages/com.peacockmedia.watchtower",
    "~/Library/HTTPStorages/com.peacockmedia.watchtower.binarycookies",
    "~/Library/Preferences/com.peacockmedia.watchtower.plist",
    "~/Library/Saved Application State/com.peacockmedia.watchtower.savedState",
    "~/Library/WebKit/com.peacockmedia.watchtower",
  ]
end
