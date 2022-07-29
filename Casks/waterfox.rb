cask "waterfox" do
  arch = Hardware::CPU.intel? ? "Setup" : "ARM.Setup"

  version "4.1.4"

  if Hardware::CPU.intel?
    sha256 "5b36be9e137031ec9dc567c5e47aeef39bfb852841e3294316f29d41af0cc6dc"
  else
    sha256 "4a602c1ffb65c9131b4be40318f19232547efc12346ab73f53b016cd122f494c"
  end

  url "https://github.com/WaterfoxCo/Waterfox/releases/download/G#{version}/Waterfox.G#{version}.#{arch}.dmg", verified: "github.com/WaterfoxCo/Waterfox/"
  name "Waterfox"
  desc "Web browser"
  homepage "https://www.waterfox.net/"

  livecheck do
    url :url
    regex(/^G?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :sierra"

  app "Waterfox.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*",
    "~/Library/Application Support/Waterfox",
    "~/Library/Caches/Waterfox",
    "~/Library/Preferences/org.waterfoxproject.waterfox.plist",
  ]
end
