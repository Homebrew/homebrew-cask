cask "widelands" do
  arch arm: "14-arm64", intel: "12-x86"

  version "1.2"
  sha256 arm:   "7b19ba62c561daa7880a4fa5683591d916f43a4b846f1fc527e1c47e6e84d4e4",
         intel: "ca3a4db1c6ccf07d2ff246d6bd979f5e7e116a8529d3ae41fdfc8d66bf4d5f93"

  on_arm do
    depends_on macos: ">= :sonoma"
  end
  on_intel do
    depends_on macos: ">= :monterey"
  end

  url "https://github.com/widelands/widelands/releases/download/v#{version}/Widelands-#{version}-MacOS#{arch}.dmg",
      verified: "github.com/widelands/widelands/"
  name "Widelands"
  desc "Free real-time strategy game like Settlers II"
  homepage "https://www.widelands.org/"

  livecheck do
    url "https://www.widelands.org/wiki/Download/"
    regex(/href=.*?Widelands[._-]v?(\d+(?:\.\d+)+)[._-]MacOS#{arch}\.dmg/i)
  end

  app "Widelands.app"

  zap trash: "~/.widelands"
end
