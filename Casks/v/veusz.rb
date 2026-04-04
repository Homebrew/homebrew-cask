cask "veusz" do
  arch arm: "arm", intel: "x86_64"

  version "4.2.1"
  sha256 arm:   "fcf3193e0a60f365ba9f82ab1dc634257e59ee3c758cc3a882e6c1eb60867300",
         intel: "a508781df33cfb36a07cd1873b297f1faa3c0cba883b836753f974e61bbc5ae7"

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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Veusz.app"

  zap trash: "~/Library/Preferences/org.veusz.veusz*.plist"
end
