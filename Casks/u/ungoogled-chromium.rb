cask "ungoogled-chromium" do
  arch arm: "arm64", intel: "x86_64"

  version "152.0.7977.64-1.1"
  sha256 arm:   "fa2a93935151ec49d8b31b1cf8e5723684199038957467f26205e8202c5a0c13",
         intel: "c3fdac7855aeb58cf951916e6934eb6c1eb08821b0fb74dba40640a32a5113ec"

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
    "~/Library/Preferences/org.chromium.Chromium.plist",
    "~/Library/Saved Application State/org.chromium.Chromium.savedState",
  ]
end
