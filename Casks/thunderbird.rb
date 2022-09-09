cask "thunderbird" do
  version "102.2.2"

  language "cs" do
    sha256 "8155236cc94926e57792edb944d58146149d04e8360a637265648298d2010d39"
    "cs"
  end
  language "de" do
    sha256 "b1e084a7c09aceb7535044b07fb07cf2aed9a1c3d5e087c99687db27fc28c0ea"
    "de"
  end
  language "en-GB" do
    sha256 "4bcded94173085b7b8a1bb16283081c6bc22c7497109ac7845eb5ce6bbd3c18d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "57826efdb4e93e8c9e04fee33ca43cc0c0dae457af9468e0f15f518fa5aecafd"
    "en-US"
  end
  language "fr" do
    sha256 "7afdca17dd7d7e9526f17658d923fb1f7c0fbe1775c3bda18023c59534f9f9b1"
    "fr"
  end
  language "gl" do
    sha256 "78723931265e0d73dfa671d4981f52524b9963b0e4d3fc1d058c1d6f7e089cd1"
    "gl"
  end
  language "it" do
    sha256 "a2d3023e8bc8a6b1f3e24bf9e0f871e8ad8dfade1d247f3baccc1dd07560afb2"
    "it"
  end
  language "ja" do
    sha256 "2648c09abf8bc00f9d10b85154a60693db3b2c5f74b96d2439127a88b70fddbe"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "db89a54615eae0e19fb2abbf3d01968f3ec73c651445843a64600cc019b63603"
    "nl"
  end
  language "pl" do
    sha256 "6c7b37e9daa59092ec7de1aaa931e680b54f130cd108d18ef4251e6e860c7a66"
    "pl"
  end
  language "pt" do
    sha256 "7ec82cbd445f24c911a0d6913602db5bb906d2e86d3c96028e7c544f6af62dd6"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "71528a67e0e02ec767657a3b158295dcde84ce6f5f169e60c61440c48f0a062d"
    "pt-BR"
  end
  language "ru" do
    sha256 "b3287d1a5cc35aab4768e350f143b0cf393a3df42c11ac239ff6c06ff94606a9"
    "ru"
  end
  language "uk" do
    sha256 "7b7bd29b5e327f8f90eae5f5860291cf838f2fcf5749441411d3ec280639912d"
    "uk"
  end
  language "zh-TW" do
    sha256 "210cb1780b2fa2a981db9493ebe84d82790d4645f01ec48b055634282b3ea437"
    "zh-TW"
  end
  language "zh" do
    sha256 "b568dc3239fb8f65c7239b76f633e8438d66984af09d4fa5ec8fbe2f3986d15a"
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
