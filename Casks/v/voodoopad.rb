cask "voodoopad" do
  version "5.4.0"
  sha256 "17f9bf20ade564f59cc65f7f6ca63419635f8350d1dee7e64ca9b8ba46fd9043"

  url "https://voodoopad.s3.amazonaws.com/VoodooPad-#{version}.zip",
      verified: "voodoopad.s3.amazonaws.com/"
  name "VoodooPad"
  desc "Notes organiser"
  homepage "https://www.voodoopad.com/"

  livecheck do
    url "https://www.primatelabs.com/appcast/voodoopad#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sierra"

  app "VoodooPad.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.flyingmeat.voodoopad5.sfl*",
    "~/Library/Application Support/VoodooPad",
    "~/Library/Caches/com.flyingmeat.VoodooPad5",
    "~/Library/Preferences/com.flyingmeat.VoodooPad5.plist",
  ]
end
