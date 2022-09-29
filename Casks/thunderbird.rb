cask "thunderbird" do
  version "102.3.1"

  language "cs" do
    sha256 "5fcce386f7cb08e70ea4c66e91f1921f5b4326a7ff6dbee087fb66c075051ae2"
    "cs"
  end
  language "de" do
    sha256 "329f7909a0838712c6cd85adf6922bbc53ffb47b9ba973b60f980154a146dbe9"
    "de"
  end
  language "en-GB" do
    sha256 "e36fc0ad2f68470a3d4369277ac9e787d34a916c47b3cd793310f58963484855"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cb4027b73670693c11f21d92ed4e126c9b30ef792f82d18364314df5e68123ab"
    "en-US"
  end
  language "fr" do
    sha256 "d165be86bc4e2f1bf04a63d9c239c57f2d58023ab67c4d3c3da74b0bf1c93172"
    "fr"
  end
  language "gl" do
    sha256 "50576c36960ec208d149de2777c72a5ba343df870e1137d0d6be10b16c1754ee"
    "gl"
  end
  language "it" do
    sha256 "791b4e330d04fa6dbac481fe21ae9681a615a21b05b869bac2c127610632fe75"
    "it"
  end
  language "ja" do
    sha256 "7d8bf7f1fd4d6a211ac3c477b9830f58db83fb79325c80863405c2910629c60c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9c8a3d7a62d6f8875f49434bd41548619b68b097d9354a804b0281415038bef2"
    "nl"
  end
  language "pl" do
    sha256 "c970b4f4812c6b2558395c31df5d73da034f7a1f54789dfb21f3b753942c97c9"
    "pl"
  end
  language "pt" do
    sha256 "2ec60a74738949fab02a6c2812f961bcf9486a448d70651abb915855fe4cfa6e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "a8d3ffb306ebc26a13ca9015c75929f055a8cf9c3fd2ae92193a1fbff40d86eb"
    "pt-BR"
  end
  language "ru" do
    sha256 "bc96665e2431940c35a0288291fe50c8e7dc017fa1613af58bc12430a1bef255"
    "ru"
  end
  language "uk" do
    sha256 "175f3402eaca04b718de4b0d24627e8984874ab0681bbcdd1bd923b6e598f94c"
    "uk"
  end
  language "zh-TW" do
    sha256 "93d9f8d277af87033be19480b129be825656ebc7e5ca45c169d4db6048a9027e"
    "zh-TW"
  end
  language "zh" do
    sha256 "734bb262706e98c49afb1a944269c86433064da391ac48d8b07cd06513d13c81"
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
