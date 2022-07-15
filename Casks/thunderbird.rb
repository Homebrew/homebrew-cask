cask "thunderbird" do
  version "102.0.2"

  language "cs" do
    sha256 "4c10a87d1e9988b4bfe10c41da52621416dfff1cc0a8aab2d2d457a7f287af2d"
    "cs"
  end
  language "de" do
    sha256 "bcf45b55ddc13cae06bc8184976b91b9c635f7bc91c471d840763e1c53a4b807"
    "de"
  end
  language "en-GB" do
    sha256 "7ed862dee8cda11e8e5788c82c3063dde4ad74277eb450a14eed4568b767033a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4fb13226bf8851aa7b454c4e084a85bd20081bfc39cb05e22d51ee6feb5adb18"
    "en-US"
  end
  language "fr" do
    sha256 "810ff1a723d140e26863afc4df912714097da2c3ced0d16e931b47d787917614"
    "fr"
  end
  language "gl" do
    sha256 "e7d5f2ce94771bf6acbcc7ae7bbd23b7519284a3873824d6163e2d97e9605372"
    "gl"
  end
  language "it" do
    sha256 "1f8adad22f1c51c7872b4bb94d527c817e4136cb9bff463487ce39077d126bb3"
    "it"
  end
  language "ja" do
    sha256 "a9cced9ff54e9ab8088bd093aaea7c8e503ee83074448791a8a3970fd905f8c7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7b7ab5e07bf1fe4ec6a4621911e8ca132ee826500d5cfb44f77de7fc1d841c10"
    "nl"
  end
  language "pl" do
    sha256 "3e1d7169f99814e8dae52bf1ec12827f0ed60460b054a30a85f6eaccd768ae6e"
    "pl"
  end
  language "pt" do
    sha256 "7488967b5d6b3469c09cb6a13676bbf739dd0e223893f2341ca848ee08426838"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "16d6422666065745c970e0c2301638746baf355fc49b4fb979c434602bdf6308"
    "pt-BR"
  end
  language "ru" do
    sha256 "b2ca198eee404397ea3a11c4fb3f3680e2f6aa64f4220c1b5dbb50e1f92b1e87"
    "ru"
  end
  language "uk" do
    sha256 "aed8cd974913bcedcecd87af0da8100ee7cb1b27f5a1fd7148e27be1e315829f"
    "uk"
  end
  language "zh-TW" do
    sha256 "c2fb0b67df1d23a3be31ea83362169b08fcce0d08a060ab6833a7517b9978dca"
    "zh-TW"
  end
  language "zh" do
    sha256 "821e4b9144c2b36b0580f2a403692932e16628d9163bf0a34a44e4b15a11e0c0"
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
