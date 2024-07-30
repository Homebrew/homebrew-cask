cask "virtualbuddy@beta" do
  version "2.0,200,b1"
  sha256 "7ba42e15eeb9e6563c6df75d6ceaa5a6ec18692b6cea9797f6d3fee9b929ad37"

  url "https://github.com/insidegui/VirtualBuddy/releases/download/#{version.csv.first}#{"-#{version.csv.third}" if version.csv.third}/VirtualBuddy_v#{version.csv.first}-#{version.csv.second}.dmg"
  name "VirtualBuddy"
  desc "Virtualization tool"
  homepage "https://github.com/insidegui/VirtualBuddy"

  livecheck do
    url :url
    regex(/^VirtualBuddy[._-]v?(\d+(?:[.-]\d+)+)\.dmg$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        tag_suffix = release["tag_name"][/-(.+)$/i, 1]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          tag_suffix ? "#{match[1].tr("-", ",")},#{tag_suffix}" : match[1].tr("-", ",")
        end
      end.flatten
    end
  end

  conflicts_with cask: "virtualbuddy"
  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "VirtualBuddy.app"

  zap trash: [
    "~/Library/Application Support/VirtualBuddy",
    "~/Library/HTTPStorages/codes.rambo.VirtualBuddy",
    "~/Library/Preferences/codes.rambo.VirtualBuddy.plist",
  ]
end
