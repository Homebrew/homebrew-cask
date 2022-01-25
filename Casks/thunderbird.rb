cask "thunderbird" do
  version "91.5.1"

  language "cs" do
    sha256 "2e756bc02be201ac5b88273707d811aa5f455a809a1bd2dd24a82cf6b9474f7d"
    "cs"
  end
  language "de" do
    sha256 "b2073808c75481d1d471a72373cce63ffae6282c183fe23b6bba6076340a534b"
    "de"
  end
  language "en-GB" do
    sha256 "6914e90866b8d18d8a35639aab780d5255cce75b630f12030a3d9a76a7488104"
    "en-GB"
  end
  language "en", default: true do
    sha256 "736c3a41ab71f13c2002b54a25d223c147cc3375b3e61cd7f3247c5c9d791186"
    "en-US"
  end
  language "fr" do
    sha256 "3d8fd8d102a082592f82872982bc5db6d7dd3e9284ee2a756e2b2647be2a0822"
    "fr"
  end
  language "gl" do
    sha256 "ad49a4e26ce596c368739c9c8eecd1638a8fc528e3978cfd2f5cac3eaec4e15b"
    "gl"
  end
  language "it" do
    sha256 "00dfdb17d5c374b4ecc056bc93bbb814bf7f1ac61c296ca9c38b6f9651a07c93"
    "it"
  end
  language "ja" do
    sha256 "a0d14097374016fe7f78f195c3df5e769f1952d06b098eb5f027743418151c5e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "cd82bb8c1896e404f6732292ed1a0f3391f5de076190ee4e30c47f6346b05dbc"
    "nl"
  end
  language "pl" do
    sha256 "415724c9e573b5e8df8667f4a5407132d0e7889bcea925ddc1213e638d063e57"
    "pl"
  end
  language "pt" do
    sha256 "ea43d50fcfd8bc1b56a76fc07af606310d94ed2d7217475b467c3b53a141b432"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "1e6befc77a2386f8c08caaaf486d3b3bb2a25535cd38565ee21d704ea9542414"
    "pt-BR"
  end
  language "ru" do
    sha256 "204d1bd33c4b0dd03ef9c0999ca412301c8f99ba34c8a2ab07eae5d1d7c8c6fb"
    "ru"
  end
  language "uk" do
    sha256 "0f31b81b1aa8c9f98e000a82291c97158c8422b5dd4dce86b21c5cdd0fbbddcd"
    "uk"
  end
  language "zh-TW" do
    sha256 "2660f40245b631d595ed156af2af28c5db34811f6e5fdb319db115b8e5421441"
    "zh-TW"
  end
  language "zh" do
    sha256 "0ee9d266ade9e3d03a459826ff1723b31e898e2ee81f4073dcb37c286abbe210"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "ftp.mozilla.org/pub/thunderbird/"
  name "Mozilla Thunderbird"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/"

  livecheck do
    url "https://download.mozilla.org/?product=thunderbird-latest-ssl&os=osx"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/thunderbird-beta"
  depends_on macos: ">= :sierra"

  app "Thunderbird.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Thunderbird",
  ]
end
