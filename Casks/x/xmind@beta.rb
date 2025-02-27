cask "xmind@beta" do
  version "25.04.02012,202502252210"
  sha256 "c7e4c1bb078463a6927eaf84c76c1811c7feaf2d1455e49014f1c0e61babb3e9"

  url "https://dl3.xmind.net/Xmind-for-macOS-#{version.csv.first}-beta-#{version.csv.second}.dmg"
  name "XMind"
  desc "Mind mapping and brainstorming tool"
  homepage "https://www.xmind.net/"

  livecheck do
    url "https://xmind.app/desktop-beta/download/mac/"
    regex(/Xmind[._-]for[._-]macOS[._-](\d+(?:\.\d+)+)-beta-(\d*)\.dmg/i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  conflicts_with cask: "xmind"

  app "Xmind.app"

  zap trash: [
    "~/Library/Saved Application State/org.xmind.cathy.application.savedState",
    "~/Library/XMind",
  ]
end
