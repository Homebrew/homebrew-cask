cask "veusz" do
  arch arm: "arm", intel: "x86_64"

  version "4.1"
  sha256 arm:   "7c77b07cc3534d109b8cc467b58fa8e054c4d75d391d745c0e0b394bd7feb0ec",
         intel: "1748f3c3f8cb70b04586d645c20950f317ad967cff9e5fcf7931b8d2a0164cf6"

  url "https://github.com/veusz/veusz/releases/download/veusz-#{version.csv.second || version.csv.first}/veusz-#{version.csv.first}-AppleOSX-#{arch}.dmg",
      verified: "github.com/veusz/veusz/"
  name "Veusz"
  desc "Scientific plotting application"
  homepage "https://veusz.github.io/"

  livecheck do
    url :url
    regex(/^veusz[._-]v?(\d+(?:\.\d+)+)(?:[._-].+)?\.dmg$/i)
    strategy :github_latest do |json, regex|
      tag_version = json["tag_name"]&.[](/^veusz[._-]v?(\d+(?:\.\d+)+(?:-fix)?)$/i, 1)
      next if tag_version.blank?

      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        (match[1] == tag_version) ? tag_version : "#{match[1]},#{tag_version}"
      end
    end
  end

  app "Veusz.app"

  zap trash: "~/Library/Preferences/org.veusz.veusz*.plist"
end
