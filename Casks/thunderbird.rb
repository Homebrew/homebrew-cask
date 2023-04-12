cask "thunderbird" do
  version "102.10.0"

  language "cs" do
    sha256 "21e017235ab673e319a760f143882e8e6e9d113242016554c2916a2dc7695f5d"
    "cs"
  end
  language "de" do
    sha256 "47d7ecd64faf32dfcaccab5629fff4a5fb1020084816d1799ff74370987867cb"
    "de"
  end
  language "en-GB" do
    sha256 "88377553fb7a8de56ecfd35c5a54224380f16f521a55cb481586d62aa1d294a7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "56fa855b23479186ebc0d7b411fbacb638a60d484cf39dd87627405db67de7b9"
    "en-US"
  end
  language "fr" do
    sha256 "119b4f9063289b3f6714444bd20ebdf19ead8fa16d4c94a9e7a1747ecc07873d"
    "fr"
  end
  language "gl" do
    sha256 "3ba0cf52e77105dd0af49e9d1f893d65e5bd12415ce6130b57ff311c7b4e0989"
    "gl"
  end
  language "it" do
    sha256 "03564a9d918190a71bc7363d8ce569ac639ab1741613f2a203cc1356feaca5eb"
    "it"
  end
  language "ja" do
    sha256 "846ede460d0f619528ecf0b6b65f03cc0c2fe3485dd9281f589794689d0ab978"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "801793a3ef799ef37f4b314f8adbe81544f3ca105957d039b97e53d45725499b"
    "nl"
  end
  language "pl" do
    sha256 "2e0ef5aa48951c02ecf1d26bd3003d260913f6df42c02cbe18e979b53eb7df94"
    "pl"
  end
  language "pt" do
    sha256 "8cb45931ee0a621039c6069b106fcf6ecd384cc89a951774e1fa6c058fb3bbc2"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d62442c38d2c7185c3a22095ad4dac336953970ed4ee01052b60350baa657a94"
    "pt-BR"
  end
  language "ru" do
    sha256 "620f2f9d7df0a0495eaf42056b581a87dca410a162825df2fd1a6f58d2ad49ad"
    "ru"
  end
  language "uk" do
    sha256 "fd85af27080f103dee72545588c156c58a29636e828875914faac6739d54da34"
    "uk"
  end
  language "zh-TW" do
    sha256 "067207e21c91125cea1e6e721bd590bc3f0adce6f060fba8813ded11c95a31da"
    "zh-TW"
  end
  language "zh" do
    sha256 "c0f2296879bd9289fd3ccb695e3c03ad50d3ca19cff9964208b45f7fd11b8a2a"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/thunderbird/"
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
