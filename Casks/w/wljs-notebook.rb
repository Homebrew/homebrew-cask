cask "wljs-notebook" do
  arch arm: "arm64", intel: "x64"

  version "3.1.4"
  sha256 arm:   "29bd46e6ee38f869befeb674080dc8e0508143bd0ed8a0afb95125564c7c22e7",
         intel: "c9af93a32509b5ccbd260949bb57af00692a91c73053f98b5579884e3259c6a8"

  url "https://github.com/JerryI/wolfram-js-frontend/releases/download/v#{version.csv.second || version.csv.first}/wljs-notebook-#{version.csv.first}-#{arch}-macos.dmg"
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

          (match[1] == tag_version) ? tag_version : "#{match[1]},#{tag}"
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
