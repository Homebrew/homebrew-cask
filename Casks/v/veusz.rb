cask "veusz" do
  version "3.6.2.1"
  sha256 "ca76ed46546b4ad9656da2dd93621e65904134755c272a4f21fb561668a3a09d"

  url "https://github.com/veusz/veusz/releases/download/veusz-#{version.major_minor_patch}/veusz-#{version}-AppleOSX.dmg",
      verified: "github.com/veusz/veusz/"
  name "Veusz"
  desc "Scientific plotting application"
  homepage "https://veusz.github.io/"

  livecheck do
    url :url
    regex(/^veusz[._-]v?(\d+(?:\.\d+)+)(?:[._-].+)?\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  app "Veusz.app"

  zap trash: "~/Library/Preferences/org.veusz.veusz*.plist"

  caveats do
    requires_rosetta
  end
end
