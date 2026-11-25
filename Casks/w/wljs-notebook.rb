cask "wljs-notebook" do
  arch arm: "arm64", intel: "x64"

  version "3.2.2"
  sha256 arm:   "e3185ebef3b0f74ce1d7d3d918a91bbd7b6b657d729507a94d7f09286eb30760",
         intel: "1859e0c42b3174818974e27ff176226bed940fd3e1b3d579bda29ba404a13158"

  release_version = version.csv.second || version.csv.first
  url "https://github.com/JerryI/wolfram-js-frontend/releases/download/v#{release_version}/wljs-notebook-#{version.csv.first}-#{arch}-macos.dmg"
  name "WLJS Notebook"
  desc "Javascript frontend for Wolfram Engine"
  homepage "https://jerryi.github.io/wljs-docs/"

  # The upstream release tag can sometimes differ from the version in the
  # filename (e.g. 2.5.6FIX vs. 2.5.6), so we include the tag in the cask
  # `version` when this happens.
  livecheck do
    url :url
    regex(/wljs[._-]notebook[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}(?:[._-]macos)?\.dmg/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        tag = release["tag_name"]
        tag_version = tag[/^v?(\d+(?:\.\d+)+.*)$/i, 1]
        next if tag_version.blank?

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          next tag_version if match[1] == tag_version

          "#{match[1]},#{tag}"
        end
      end.flatten
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "WLJS Notebook.app"

  uninstall quit: "wljs-notebook"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/wljs-notebook.sfl*",
    "~/Library/Application Support/wljs-notebook",
    "~/Library/Preferences/wljs-notebook.plist",
    "~/Library/Saved Application State/wljs-notebook.savedState",
  ]
end
