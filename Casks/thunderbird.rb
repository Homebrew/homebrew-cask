cask "thunderbird" do
  version "91.10.0"

  language "cs" do
    sha256 "54cfe28881303873dc3fcf5a355e5289cbce8007c38c3d010597265cdcc2dfaf"
    "cs"
  end
  language "de" do
    sha256 "250228b8324840ceec1aa3a00496aa6c9f9a6449543320c5b1182991d5d502f5"
    "de"
  end
  language "en-GB" do
    sha256 "d820ba74005ee05540cd5f0cde5cdfee53174ed7eb233d99e89510f04b769c27"
    "en-GB"
  end
  language "en", default: true do
    sha256 "403290869b8221989f6648344669bee13538c05cdc8365563f001176a833845e"
    "en-US"
  end
  language "fr" do
    sha256 "d40c3a52fd3f3f781e4c36561242cf6806fe59859f70d6e01182f4474e6f2591"
    "fr"
  end
  language "gl" do
    sha256 "8470e31fbf4967d9849c3be4e5129cc470a6bcecf15a2ae463b691c5f18a990c"
    "gl"
  end
  language "it" do
    sha256 "d848a5dbebdfd734c3e364a2d5e7717a2873d599a6a879428ea5ff5c64939421"
    "it"
  end
  language "ja" do
    sha256 "574a4898a617293b01988903f0f1a239b69f9847869796dbc68dc20fd0253f33"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e27a4c61e6953759f7dbb8545505dd2b0e495fdfb1551006981c1772b71b519f"
    "nl"
  end
  language "pl" do
    sha256 "7d7ffbaf2577e976faf9014c70f4caa35263c1e67d81592251cad5a56cc14887"
    "pl"
  end
  language "pt" do
    sha256 "a98893d9cc0112fc7a050578f836d874dfd450d6aababbcaaabd581c807b5a1f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "598fdda88cd74ed32dba115e8d1ecdff55e0a1bdf860d5ac288d40996f6a2054"
    "pt-BR"
  end
  language "ru" do
    sha256 "7c690d919a1d48db85a9bd80a9ba5b8eff11471dc8d7be35155b747694aa9a2d"
    "ru"
  end
  language "uk" do
    sha256 "5d6ea29f40f236630fd35bdf44b5f4b01b29e49456581ed6894ea24000b16f03"
    "uk"
  end
  language "zh-TW" do
    sha256 "b8a02ab5daee058829493bdda6c57f83ace4bf7c32cb3eb84bcf1655ab61d263"
    "zh-TW"
  end
  language "zh" do
    sha256 "98187e19aa11c5f75d7ff188cd676ac00993344681aff2ba6defa71e5e55c821"
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
