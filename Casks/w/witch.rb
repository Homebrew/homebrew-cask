cask "witch" do
  version "4.7.0"
  sha256 "aad6812460df8c670999691e244b111bfad19c2544180093ecf2019ca45cb7fe"

  url "https://manytricks.com/download/_do_not_hotlink_/witch#{version.no_dots}.dmg"
  name "Witch"
  desc "Switch apps, windows, or tabs"
  homepage "https://manytricks.com/witch/"

  # The dotless version in the file name uses major/minor/patch but the appcast
  # `shortVersionString` may omit patch for new major/minor versions (e.g.
  # 470 and 4.7 respectively). This adds `.0` to versions without a patch to
  # avoid this mismatch.
  livecheck do
    url "https://manytricks.com/witch/appcast/"
    regex(/^v?(\d+\.\d+)(\.\d+)*$/i)
    strategy :sparkle do |item, regex|
      match = item.short_version&.match(regex)
      next unless match

      "#{match[1]}#{match[2].presence || ".0"}"
    end
  end

  auto_updates true

  prefpane "Witch.prefPane"

  uninstall quit:       "com.manytricks.witchdaemon",
            login_item: "witchdaemon"

  zap trash: [
    "~/Library/Application Support/Witch",
    "~/Library/Preferences/com.manytricks.Witch.plist",
  ]
end
