cask "wljs-notebook" do
  arch arm: "arm64", intel: "x64"

  version "2.5.6,2.5.6FIX"
  sha256 arm:   "0aefd5dfe2f518c3a22e357193f196774e48232a4b7ac8bdeb58c48bcee25d33",
         intel: "21f2e42bc6fff7b70e751dc6221a09bd7d613bedccb91b04a69e13ecc78e9377"

  url "https://github.com/JerryI/wolfram-js-frontend/releases/download/#{version.csv.second || version.csv.first}/wljs-notebook-#{version.csv.first}-#{arch}.dmg"
  name "WLJS Notebook"
  desc "Javascript frontend for Wolfram Engine"
  homepage "https://github.com/JerryI/wolfram-js-frontend"

  # The upstream release tag can sometimes differ from the version in the
  # filename (e.g. 2.5.6FIX vs. 2.5.6), so we include the tag in the cask
  # `version` when this happens.
  livecheck do
    url :url
    regex(/wljs[._-]notebook[._-]v?(\d+(?:\.\d+)+)/i)
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
  depends_on macos: ">= :catalina"

  app "WLJS Notebook.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/wljs-notebook.sfl*",
    "~/Library/Application Support/wljs-notebook",
    "~/Library/Preferences/wljs-notebook.plist",
    "~/Library/Saved Application State/wljs-notebook.savedState",
  ]
end
