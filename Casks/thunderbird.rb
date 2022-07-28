cask "thunderbird" do
  version "102.1.0"

  language "cs" do
    sha256 "9deea7bcba7b7ad39a73da10860e30aacc905650bee906135445a8f806efdabf"
    "cs"
  end
  language "de" do
    sha256 "5238ec780d6f643725c6aba80853c2e3c4e681fd24f7035c761fe8477dcf813f"
    "de"
  end
  language "en-GB" do
    sha256 "fdfcbc16aff7eed2d5fba2793f7f6ae89707f69f46c7ec174c014547a7595b39"
    "en-GB"
  end
  language "en", default: true do
    sha256 "97992136e7d1ae2a998df7e295d6d674608d2ebb8eac812cd019c969ba77c97e"
    "en-US"
  end
  language "fr" do
    sha256 "c8b73b1c5c325607956a2f9f8fe8335b2af560eea1c625e2c6b4a68bbed0e29f"
    "fr"
  end
  language "gl" do
    sha256 "401330f09055bf45e61b9061f6e17a7fb36e3fde362677480128778cd71f5352"
    "gl"
  end
  language "it" do
    sha256 "53d24447721cf1127cef28df2e8e02760e3eeb870f2a21eafd115d17b4775e16"
    "it"
  end
  language "ja" do
    sha256 "15e97af1ae7ec273346eedaf9aa5e7d60b3d815444da71094cb1a334c1d85c33"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "fbb9b8fe02ec090278e8b1430a2560bebbc1d7b15fe9fe43b777dcc75e0477bf"
    "nl"
  end
  language "pl" do
    sha256 "1683e86ab3ef6892a70aeaf4c650970982842ea75a545b0d38fc7f3891bb7d53"
    "pl"
  end
  language "pt" do
    sha256 "90b28b1e813f20566c8787825825820e721124caf55e3d8a5a93d6ef15511201"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "903ce6c6cc1b83a307906d9db6932827e5ff72b279c449bb66a084536af062ff"
    "pt-BR"
  end
  language "ru" do
    sha256 "0b17bbb86109fc52abe0aec683e62c53320f4a900bb324fd3494ed65ad49fc5a"
    "ru"
  end
  language "uk" do
    sha256 "feecb9b1aa5e9c1385a9d25225a8eae74cf080de4ca6a41b411b85fe66a7f847"
    "uk"
  end
  language "zh-TW" do
    sha256 "9e10f820388aaa7dbed88e75ffd652379c85dd73d4d9a9c24e4eaaab3ee4da29"
    "zh-TW"
  end
  language "zh" do
    sha256 "71ef70fdd406c9baaeb6adf518af6da28ea117229ebeb4d043431cff36c9bb12"
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
