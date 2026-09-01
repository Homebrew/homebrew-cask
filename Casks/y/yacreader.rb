cask "yacreader" do
  version "10.3.0.260901368"
  sha256 "3b23304407079b7fb77cf7f5f1aeecc54e39014c72f9a877e41ee184e637d2ac"

  url "https://github.com/YACReader/yacreader/releases/download/#{version.major_minor_patch}/YACReader-#{version}.MacOSX-U.Qt6.dmg"
  name "YACReader"
  desc "Comic reader"
  homepage "https://www.yacreader.com/"

  livecheck do
    url :url
    regex(/^YACReader[._-]v?(\d+(?:\.\d+)+)[._-]MacOSX[._-]U[._-]Qt6\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: :monterey

  app "YACReader.app"
  app "YACReaderLibrary.app"

  zap trash: [
    "~/Library/Application Support/YACReader",
    "~/Library/Preferences/com.yacreader.YACReader.plist",
    "~/Library/Preferences/com.yacreader.YACReaderLibrary.plist",
    "~/Library/Saved Application State/com.yacreader.YACReader.savedState",
    "~/Library/Saved Application State/com.yacreader.YACReaderLibrary.savedState",
  ]
end
