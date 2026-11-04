cask "ungoogled-chromium" do
  arch arm: "arm64", intel: "x86_64"

  version "156.0.8078.79-1.1"
  sha256 arm:   "4ff3b084c49d2391aecdd3924ebd1bd7417fb1dd88e3da45891bee73f8e5c173",
         intel: "152f0d67ab9301a2e6fa4d38b25e1382c0c74c72772d533ce7c4390e599a1db4"

  url "https://github.com/ungoogled-software/ungoogled-chromium-macos/releases/download/#{version}/ungoogled-chromium_#{version}_#{arch}-macos.dmg"
  name "Ungoogled Chromium"
  desc "Google Chromium, sans integration with Google"
  homepage "https://ungoogled-software.github.io/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:[.-]\d+)+)(?:[._-]#{arch})?(?:[._-]+?(\d+(?:\.\d+)*))?$/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  conflicts_with cask: "chromium"
  depends_on macos: :ventura

  app "Chromium.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
    "~/Library/Preferences/io.ungoogled-software.ungoogled-chromium.plist",
    "~/Library/Preferences/org.chromium.Chromium.plist",
    "~/Library/Saved Application State/org.chromium.Chromium.savedState",
  ]
end
