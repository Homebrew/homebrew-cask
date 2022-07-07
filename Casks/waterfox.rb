cask "waterfox" do
  arch = Hardware::CPU.intel? ? "Setup" : "ARM.Setup"

  version "4.1.3.1"

  if Hardware::CPU.intel?
    sha256 "efd62ffb526efc3546b9bd6a4f7482918a4a913bc3bfdb54a5dc76a97a5b8f28"
  else
    sha256 "26dada4e24709232294102130e8d3333c40491fcdfa65a4b395b1a9ff9b95451"
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
