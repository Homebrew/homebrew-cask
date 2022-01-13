cask "tropy" do
  version "1.11.1"

  if Hardware::CPU.intel?
    sha256 "4351ebdf5284f6f4f3d5707f1ba19659cd12c291d70d031b81182f6a30d2819d"
    url "https://github.com/tropy/tropy/releases/download/v#{version}/tropy-#{version}.dmg",
        verified: "github.com/tropy/tropy/"
  else
    sha256 "289b8e92f03d5917c72d56a2f5b021233e42f4ed50ab0d9c6464d98bb8a5514d"
    url "https://github.com/tropy/tropy/releases/download/v#{version}/tropy-#{version}-arm64.dmg",
        verified: "github.com/tropy/tropy/"
  end

  name "Tropy"
  desc "Research photo management"
  homepage "https://tropy.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Tropy.app"

  zap trash: [
    "~/Library/Application Support/Tropy",
    "~/Library/Caches/Tropy",
    "~/Library/Caches/org.tropy.tropy",
    "~/Library/Caches/org.tropy.tropy.ShipIt",
    "~/Library/Logs/Tropy",
    "~/Library/Preferences/org.tropy.tropy.plist",
    "~/Library/Saved Application State/org.tropy.tropy.savedState",
  ]
end
