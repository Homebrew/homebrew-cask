cask "thunderbird" do
  version "91.2.1"

  language "cs" do
    sha256 "5c053d92f7662dc05a7f8392ee9da5f37c661f1b3a8f2fc5ae7cf7d501a9e4fa"
    "cs"
  end
  language "de" do
    sha256 "97caf79957d89fc821769603156ad8a475dee5111d003d6232118ece0927b041"
    "de"
  end
  language "en-GB" do
    sha256 "2d76beb126521d63948bae94e76b2dc076a02740cfd7792a9f9a10cee0791914"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0912a22be0f127db6b367b84254f9104806073edac24bf34fa10f048eb38d89a"
    "en-US"
  end
  language "fr" do
    sha256 "cc788d6d44a5bf62b9ad62217bc9ece585fdf3eb5c05b7f002af5489d593394b"
    "fr"
  end
  language "gl" do
    sha256 "a28e55ecbee958c0b93cb40250803c282f7e083f8a7e6b7a85c28b952f8e1521"
    "gl"
  end
  language "it" do
    sha256 "d869f47a126a7be7dc97e746b874ec332fb7afa9556423ba7f15880161b979f3"
    "it"
  end
  language "ja" do
    sha256 "7e2d01a7141e2cd2ba442a50e19a9263671acdba15e96a53c5a4b15c60393eca"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e937b96ff753afc297f129de6ccf0f665e238d0052f11e2932808c8696c6a948"
    "nl"
  end
  language "pl" do
    sha256 "f639dec6dcc639ad93d81979916442fa541a255a54ac03dc679d19b60e49c091"
    "pl"
  end
  language "pt" do
    sha256 "550e348548d547f7a3dc27984ae36c129a16ab1d0df852df1b7ceab6ad40b79b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "0afd9db778bc8b136911b23d87bdd2c1fca1e722bd2218d24c444a680992fd35"
    "pt-BR"
  end
  language "ru" do
    sha256 "9fc6835783429b4ad99af8b5cc11cab8541abbf0d5c75f3bdc391a7333c3708f"
    "ru"
  end
  language "uk" do
    sha256 "68d26c7a9b2701a81a6730825c4c55982b9f178541ac024c3aed22b7b860a236"
    "uk"
  end
  language "zh-TW" do
    sha256 "c888692efa9abc2d27eb3e58592e7c60b0fafa20a90934c414151cc0ad2b5ba7"
    "zh-TW"
  end
  language "zh" do
    sha256 "1eca8ccd48b925b18912da398e69e9c70eebf696d162ad16c72cf0ca4327db4f"
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
