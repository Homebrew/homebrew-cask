cask "whichspace" do
  version "1.4.0"
  sha256 "984e066fe432c189ad60af05319137a9b1901b465756673a24d9470168b13c92"

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
