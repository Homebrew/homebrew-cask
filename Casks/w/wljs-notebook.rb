cask "wljs-notebook" do
  arch arm: "arm64", intel: "x64"

  version "2.6.7"
  sha256 arm:   "c95b6c456aa2a08a0d9f0a31cbb74e85a3a7b3c99da8a65cf5125bf01e5ede56",
         intel: "e7b952b6e3b7a7cc19d22939578e5be385314e8c836ec9bc395cea74ae2167f7"

  url "https://github.com/JerryI/wolfram-js-frontend/releases/download/#{version.csv.second || version.csv.first}/wljs-notebook-#{version.csv.first}-#{arch}-macos.dmg",
      verified: "github.com/JerryI/wolfram-js-frontend/"
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
  depends_on macos: ">= :catalina"

  app "WLJS Notebook.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/wljs-notebook.sfl*",
    "~/Library/Application Support/wljs-notebook",
    "~/Library/Preferences/wljs-notebook.plist",
    "~/Library/Saved Application State/wljs-notebook.savedState",
  ]
end
