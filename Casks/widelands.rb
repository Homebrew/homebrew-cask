cask "widelands" do
  arch arm: "12-Arm", intel: "11"

  version "1.1"
  sha256 arm:   "c1591517559e881f622435a6c464dd9be19a41ebdad307e70b070fdcdaf34eda",
         intel: "d31b8532a1d506d9b8ac39988479da0919ed43a87b4ef8d4f001734fb98c8120"

  url "https://github.com/widelands/widelands/releases/download/v#{version}/Widelands-#{version}-MacOS#{arch}.dmg",
      verified: "github.com/widelands/widelands/"
  name "Widelands"
  desc "Free real-time strategy game like Settlers II"
  homepage "https://www.widelands.org/"

  livecheck do
    url "https://www.widelands.org/wiki/Download/"
    regex(/href=.*?Widelands[._-]v?(\d+(?:\.\d+)+)[._-]MacOS#{arch}\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "Widelands.app"

  zap trash: "~/.widelands"
end
