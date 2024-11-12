cask "xmind@beta" do
  version "24.07.03011,202403312339"
  sha256 "abd4e869d377087cd7ba273e764740bfdb48ee55dc0bab38f089abdcd59efeab"

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
