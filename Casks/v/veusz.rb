cask "veusz" do
  version "3.6.2"
  sha256 "cc09d7491c64259b5b4e06004719c350f7e9a5a472173cf293c8ad067056c002"

  url "https://github.com/veusz/veusz/releases/download/veusz-#{version}/veusz-#{version}-AppleOSX.dmg",
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
end
