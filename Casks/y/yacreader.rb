cask "yacreader" do
  version "10.3.1.260922387"
  sha256 "92bbaafd09642ee93c74dd88a666c6b998b6dc81037a88b9be61a2af69d83f1b"

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

  uninstall quit: "com.yacreader.YACReader"

  zap trash: [
    "~/Library/Application Support/YACReader",
    "~/Library/Caches/YACReader",
    "~/Library/Preferences/com.yacreader.YACReader.plist",
    "~/Library/Preferences/com.yacreader.YACReaderLibrary.plist",
    "~/Library/Saved Application State/com.yacreader.YACReader.savedState",
    "~/Library/Saved Application State/com.yacreader.YACReaderLibrary.savedState",
  ]
end
