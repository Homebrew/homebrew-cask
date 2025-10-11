cask "veusz" do
  arch arm: "arm", intel: "x86_64"

  version "4.2"
  sha256 arm:   "0cfef00226d58631b27cfcc0e300f8f12d2bb16a95349757e92fe9008fc4ffff",
         intel: "1c23d385ecc021e63fc2bf8459a173aca3684816763dd32bdf61f90ced53d7f3"

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
