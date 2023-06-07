cask "thunderbird" do
  version "102.12.0"

  language "cs" do
    sha256 "10d16ce597cf98326ec7dbd2d54b3be13ad3088cf2c658bfaf6d0f3e550d76aa"
    "cs"
  end
  language "de" do
    sha256 "2b500d744d193de02d85ded9e8d52fcdba7fbc7c4a28c8c67834f9ce6ffc2718"
    "de"
  end
  language "en-GB" do
    sha256 "798594cfbf739da9ef530b8b467841e971a9fd4bd1df88ad86b9200c47154548"
    "en-GB"
  end
  language "en", default: true do
    sha256 "96f66f1e6d663a60e6c005055d9f65bc6dfeeaca089bfdb9030d12073cc774a1"
    "en-US"
  end
  language "fr" do
    sha256 "b503313022bdd71e3a4b2d083a5a6d4d46efe9ad8ecbca5840cb6309ae50cd57"
    "fr"
  end
  language "gl" do
    sha256 "8d8c4d09cbd495c63157a1081d55a409fc1912fde12908f811a95fb0c2579b37"
    "gl"
  end
  language "it" do
    sha256 "686f61cc71d3eac03a445352775783edddbcd4f1f80468b4568b870668153e3b"
    "it"
  end
  language "ja" do
    sha256 "81d5328c28e1364b5cdd46531bd7fcd05e2a80a4f45c079793661537b848a43c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7e316dc725b9d24fa6af134b3c7bcabc674181bd8adf964fedb7d68f4d742cd3"
    "nl"
  end
  language "pl" do
    sha256 "13db37148f2e94f373cac3e7d88e8351cd133b2e062914e09b4291cf79b5623c"
    "pl"
  end
  language "pt" do
    sha256 "e92cb50cbb11db5cbb33badd2f4c8e48b4dceb4f397603399340766a138d9e4e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "a48ce353ad52b6d707748f01babbd2790c0ceb4a6a0d3bdb97722ab6d0e96923"
    "pt-BR"
  end
  language "ru" do
    sha256 "6cff6d4f1c679985853a56dfbfba910e09fb78985e162e3d79d4579c8a08b0bc"
    "ru"
  end
  language "uk" do
    sha256 "6a52ade82f919b1fae372a4ef3f3c319f4b2d9403e0dc3147398e6f761be3999"
    "uk"
  end
  language "zh-TW" do
    sha256 "6ddae6f579c9bcbbbd85e6aa403446df83a8ce7e52fd63ff97f0a1440652be99"
    "zh-TW"
  end
  language "zh" do
    sha256 "45f0faf62b89966170a7d63c866d37e32e6bd173cae1a235f63ea84a7834ab92"
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
