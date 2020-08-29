cask "thunderbird" do
  version "78.2.0"

  language "cs" do
    sha256 "1a48d4fdee5a6afff9acd140d1c4e90b0e7778abf73b00b080b5dcc718f81cf6"
    "cs"
  end
  language "de" do
    sha256 "39bbb219700031f1b32f126f0a6c3498b682bc8eacb86259265547b848599f92"
    "de"
  end
  language "en-GB" do
    sha256 "c635e584ffef49ee4dcf9337603971620bfb23d8cc3a4c916821b283372e6973"
    "en-GB"
  end
  language "en", default: true do
    sha256 "23754ad710c95b477d49208dc596d21e567ca502de4c8f98aefeb19407fe445d"
    "en-US"
  end
  language "fr" do
    sha256 "c5b1040f9007ac0d31c925f9c8981fc874f9ea4faa83b9dc447c0b1f5ce6ccf5"
    "fr"
  end
  language "gl" do
    sha256 "44e85844154a993261bc247c7d8eef3736f67d52f5c215c7ffe456157c6ab4b2"
    "gl"
  end
  language "it" do
    sha256 "c679eaa18fd373f3a8f42d61455515dc3d341487ed48195ecde8e74551b9428d"
    "it"
  end
  language "ja" do
    sha256 "86716a6c884fb5b0d53edfeefcf2e5c61501c519b7541699c685021329999677"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "095609c0cfe438b33de29205eea28faf085b4f0731ac1000a6c39909d816efc2"
    "nl"
  end
  language "pl" do
    sha256 "d86156c307d4bc778d1928df157c418db113ec391bb7d73831148ea079aae030"
    "pl"
  end
  language "pt" do
    sha256 "e07af72c32bc86fae5a2879cafbdc3c08d6bb46a0f73287d611b2b6ba7355cfd"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "de7087323263f10968c3b3faae77c725c27639d14a57c050d56c6957b8208e4d"
    "pt-BR"
  end
  language "ru" do
    sha256 "257a2bba2c663374c7bf7d3535d4a145fbdfd5a008210421467fc527a734b731"
    "ru"
  end
  language "uk" do
    sha256 "069df4cd76e85de22a601f3603fae50f576a718074907003f72e9dc1f60c9eae"
    "uk"
  end
  language "zh-TW" do
    sha256 "cc37c1ce7d813916a205ae063ae84fddfd9ae9572908ef3ebe806b3626d1c68a"
    "zh-TW"
  end
  language "zh" do
    sha256 "f386b5a035b30dc1ab0ffe3a56c06a37cfb344444c28a09286f5b75e1c212237"
    "zh-CN"
  end

  # ftp.mozilla.org was verified as official when first introduced to the cask
  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://www.thunderbird.net/en-US/thunderbird/releases/"
  name "Mozilla Thunderbird"
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
