cask "thunderbird" do
  version "91.3.2"

  language "cs" do
    sha256 "1c5de25be8372949ca6fe5067c01de8b9e684b64503d478e168d38063391c1c0"
    "cs"
  end
  language "de" do
    sha256 "920789fd9661f062c0fe037a0d808cb3e1c17977a1d010a85ddbfebe715b8397"
    "de"
  end
  language "en-GB" do
    sha256 "e671b8d2ebcbacdb08a7d33ff83ca3a441bee6c9cb73070590837b0001ae84f4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2b1aa27a35d7b385bbe8c18114ea027c0722b07937fdc5405ece3ca942a700ae"
    "en-US"
  end
  language "fr" do
    sha256 "b3a82bbd8175396b83fd5a26da7fa3ea69eec55eb243c78ea8088bc762e41174"
    "fr"
  end
  language "gl" do
    sha256 "369b0b523ab4ebb9807084110769c8ef758a794eaa6c74f52979cb4b50edb95c"
    "gl"
  end
  language "it" do
    sha256 "e6e5f0a3f26093e4564513711b3ae0e46bfcba6ad1d4c83d28d4df0617d760fc"
    "it"
  end
  language "ja" do
    sha256 "21891ddbbd60a1b82d1ba679b9967b680a6aa32c7d43e3c21e6f12c992bff5d9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "1756a4cbc9ebb34613a461cc344c1ece03287cfe1e19552614ff36acc5e943ce"
    "nl"
  end
  language "pl" do
    sha256 "3e4e8fb0ce625775661ba6e645966ddcd92ab3b7686719829b451bf32b850173"
    "pl"
  end
  language "pt" do
    sha256 "a0ff19ce138d09f35e5acfb07055a02a84f271b140e561662d89f77e34c0048c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "a1d330387a86a286c765427751487d592f4947dfbf9a2ab93af10b949cb1a3d4"
    "pt-BR"
  end
  language "ru" do
    sha256 "f8bb59f03e87995ec16c162f6a4836520179b508d0ffe43aba5164f675c79705"
    "ru"
  end
  language "uk" do
    sha256 "053edfd38ad21e7c60033fc453754bd8b58d1de70e474c1cf0004613a4d58df1"
    "uk"
  end
  language "zh-TW" do
    sha256 "02db44fec3fa737c40f28c5bb4b75cf7cb726bc45971e2a8dba31e8d41749799"
    "zh-TW"
  end
  language "zh" do
    sha256 "6941463ca2a2682073a8c69d9cf28facbad56d3655d6b9672db3a5fcf1739a37"
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

  app "Thunderbird.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Thunderbird",
  ]
end
