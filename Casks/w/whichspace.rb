cask "whichspace" do
  version "1.4.1"
  sha256 "02a00688dbd145a432813a2b2c8447584320afaf1c9a3a9f677e7b53e86a8d24"

  url "https://github.com/gechr/WhichSpace/releases/download/v#{version}/WhichSpace.zip"
  name "WhichSpace"
  desc "Menu bar utility for viewing and switching Spaces"
  homepage "https://github.com/gechr/WhichSpace"

  # The Sparkle feed can contain items on the "nightly" channel, so we restrict
  # matching to the default channel.
  livecheck do
    url "https://raw.githubusercontent.com/gechr/WhichSpace/updates/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.nice_version
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "WhichSpace.app"

  uninstall quit: "io.gechr.WhichSpace"

  zap trash: [
    "~/Library/Caches/io.gechr.WhichSpace",
    "~/Library/Cookies/io.gechr.WhichSpace.binarycookies",
    "~/Library/HTTPStorages/io.gechr.WhichSpace",
    "~/Library/Preferences/io.gechr.WhichSpace.plist",
    "~/Library/Saved Application State/io.gechr.WhichSpace.savedState",
  ]
end
