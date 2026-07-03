cask "ungoogled-chromium" do
  arch arm: "arm64", intel: "x86_64"

  version "149.0.7827.155-1.1"
  sha256 arm:   "779200bfc9dd8c113660ce147d59d817093949d33d6b95f123ffb4db6277c1bc",
         intel: "c0c3a30bf8256e622e193fed7ca4a887932bfcc5909db0879d476bcf11e97b06"

  url "https://github.com/ungoogled-software/ungoogled-chromium-macos/releases/download/#{version}/ungoogled-chromium_#{version}_#{arch}-macos.dmg",
      verified: "github.com/ungoogled-software/ungoogled-chromium-macos/"
  name "Ungoogled Chromium"
  desc "Google Chromium, sans integration with Google"
  homepage "https://ungoogled-software.github.io/"

  caveats do
    <<~EOS
      Ungoogled Chromium may not work reliably as the default browser for macOS
      system OAuth flows such as Internet Accounts. If account sign-in does not
      open a browser, temporarily set Safari or Google Chrome as the default
      browser, finish the sign-in, then switch back to Ungoogled Chromium.
    EOS
  end

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
  depends_on macos: :monterey

  app "Chromium.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
    "~/Library/Preferences/org.chromium.Chromium.plist",
    "~/Library/Saved Application State/org.chromium.Chromium.savedState",
  ]
end
