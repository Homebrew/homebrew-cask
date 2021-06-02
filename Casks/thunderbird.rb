cask "thunderbird" do
  version "78.10.2"

  language "cs" do
    sha256 "ac0bc317db0d90411ace0bad7736baa503b396dd7b149a4e302505263a23ad09"
    "cs"
  end
  language "de" do
    sha256 "73eb8b6fd2ccb5c62e515186f04ff550d2ef72679739f04e922fdc0f0b00a68a"
    "de"
  end
  language "en-GB" do
    sha256 "d581246945e8df0c4fbfdade5fca086dc2d4f8c9754e6ca1e89400d973f32aa6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c1b81afbfd2551c1e0d7b92620cc58d82e18b90ebf19dc84f98a7c5ffc081aee"
    "en-US"
  end
  language "fr" do
    sha256 "ab68a0886ec1999eef03a9d6302add7cec0dc6b8933a179d6591be23d2c69caa"
    "fr"
  end
  language "gl" do
    sha256 "832367de129f2fd0aa30a4fd6983cf8417e19e11265daefc063cbde43df6ea40"
    "gl"
  end
  language "it" do
    sha256 "f8d0ac6b6ed8bdf1f6aaed4c1c97b6d4f8cd0768dc67d475391ac50af74f2e2d"
    "it"
  end
  language "ja" do
    sha256 "d10009e3ab064afc0ea711b9633c393ce390d3d4427a0fa77f82558e558895fd"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "59114c63e7f0d24dd1f04b14c6a5e0e2c207a8c7ae04dce1d44785d406df86be"
    "nl"
  end
  language "pl" do
    sha256 "4eab5dda1e1b9e48314ac31a5c22d8ec08bf563a2b00fa4da5eff551ea861aca"
    "pl"
  end
  language "pt" do
    sha256 "b7086369457d740da249095d9c295f4b50364de87f9714f96f23c451c0e17875"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d681944606c99449231cff45df004302a5c5ad3487cb542cba0b0df3e6119cb8"
    "pt-BR"
  end
  language "ru" do
    sha256 "150aa6afc6fbde20fd44ed7efd4fb461a366a85f182891f141edb3937c8eb1db"
    "ru"
  end
  language "uk" do
    sha256 "10a58205228663c02c1f3ba1e88076b5d91b805da58f9f28bc6aa200d221c24a"
    "uk"
  end
  language "zh-TW" do
    sha256 "c88b25a2bb842c2051d3ccc85c0f5bc9d0add9e179e082dd627b781d7c9fbb49"
    "zh-TW"
  end
  language "zh" do
    sha256 "3604175edef0d70eb49affd7dc039f8b298dc19f5d0fd654b1a4f1409304198e"
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
    "~/Library/Thunderbird",
    "~/Library/Caches/Thunderbird",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
  ]
end
