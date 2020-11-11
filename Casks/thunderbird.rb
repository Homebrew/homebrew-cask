cask "thunderbird" do
  version "78.4.3"

  language "cs" do
    sha256 "0367621a41c2700b0550014e69b9792280ff0a9a0360a3870ea28b2355661eee"
    "cs"
  end
  language "de" do
    sha256 "2ee3df0b164e4a2f2860cbc8fe5981e7b4839d47253b3faa0e2a83acd08d982e"
    "de"
  end
  language "en-GB" do
    sha256 "71a8d5e17a16a7c6e01665f3248aa74e76ca99d94f8118c2ecc17bded736ddb9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "73a8be1a732e55ce7e0c02f736c7d2e74f7e90a96fa6db1e280e85c71c99ec5e"
    "en-US"
  end
  language "fr" do
    sha256 "e97a1fd1aed0818ac27e750483c04056fc3e3fe8ee68d82daab4eaafd802c859"
    "fr"
  end
  language "gl" do
    sha256 "2c23d2d2a3b314cefc5290361a9c966865355d99a9daea9f4f02698d0ac6f3db"
    "gl"
  end
  language "it" do
    sha256 "5bc83d889d566f97d0a162bbab807e44212d5e3f4d11a16777a3475d0f4af3e0"
    "it"
  end
  language "ja" do
    sha256 "e22db0ab58d9ca3396b7796beab1c4d6761a806782a4b44fda82187f6c6f9952"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5d7c36a14796cda477cc03bf133822c05a84b393fd2073d8a5dd1074f70206aa"
    "nl"
  end
  language "pl" do
    sha256 "7b19fc149f8b450dfc1f6b24c6c1c3b4e80c58c6542fbb5fc801ae36b0398510"
    "pl"
  end
  language "pt" do
    sha256 "0040b8c9c07582f2067d68a55553cf306c619f94566e2b782b3abc448b2e2d97"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "02a9f06a5a037a42579a624347b35606d210dc21cfb428b46f890ca805bb72a8"
    "pt-BR"
  end
  language "ru" do
    sha256 "560c38f2e99d9c281f9ed401a05e639a20d12b208a01cdea6e9a1e57b179018f"
    "ru"
  end
  language "uk" do
    sha256 "f8fdff907e14d7353c881b678acb91fa8b2ded3c3216cda33e32bb9215fe4feb"
    "uk"
  end
  language "zh-TW" do
    sha256 "97fe3d9453529a10f244be2d3f0b3b76da245509338bc222e86b73773cd643cb"
    "zh-TW"
  end
  language "zh" do
    sha256 "7ecdb5adcfd3dd7bfe3ccb9236d3ac72a6c8f091b6789de894b2dbfdeb902ef3"
    "zh-CN"
  end

  # ftp.mozilla.org was verified as official when first introduced to the cask
  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://www.thunderbird.net/en-US/thunderbird/releases/"
  name "Mozilla Thunderbird"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/"

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/thunderbird-beta"

  app "Thunderbird.app"

  zap trash: [
    "~/Library/Thunderbird",
    "~/Library/Caches/Thunderbird",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
  ]
end
