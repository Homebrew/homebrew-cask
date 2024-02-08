cask "widelands" do
  arch arm: "12-Arm", intel: "11"

  version "1.1"
  sha256 arm:   "b469457ddb78443c70896c4a81fd1787193bd0453bd6d63e6d4cf96d322f13ff",
         intel: "65a965297ffc1e7f262234bf09064364f7a181eec8685d02e2f7de22d30c12b4"

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
