cask "thunderbird" do
  version "102.0.3"

  language "cs" do
    sha256 "3fddfdee21081881024c0fcf30c81096a2ff1d48c82c5d6a3b5a3841c9417a8a"
    "cs"
  end
  language "de" do
    sha256 "c756260bb0daa4ffc386c737cf7cb88a9dc3c71ca2e299f3367ce3368df060fa"
    "de"
  end
  language "en-GB" do
    sha256 "4c798a50d4af9f9a648db8cc688a3bdd17dd90e61a40e240e6e2bf9a55b65dbb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "70e061df686965ead02bc7fc6701fd6070a8cbf88fa4de0db710c3472d2530d8"
    "en-US"
  end
  language "fr" do
    sha256 "847fb8bbcd6253e6a1f8d60753652a43038726226f8e3b353691d1858f54968c"
    "fr"
  end
  language "gl" do
    sha256 "d4c4eeb765c8a2c5c9ac3f0bec36369633f5c3b5b79b21c11b1195f204aff064"
    "gl"
  end
  language "it" do
    sha256 "cb49078630a51cc7b7871b497bae9bb039cb05a4b4cca7f5ce77554a3fdb7421"
    "it"
  end
  language "ja" do
    sha256 "97b98c2c079b3711a69f36babbc610121436ca4219acab12cf033f97fbe24dea"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c9e00e90a830d2c42e7fa80153167c723e30007133f69761b21bdee6e982779d"
    "nl"
  end
  language "pl" do
    sha256 "ce18d2ec4b18a39d4272e56623611648baecff73ec323049b24dde9c7e6bef2d"
    "pl"
  end
  language "pt" do
    sha256 "b0cd48222568dff3b0c13b03439fa2ec5c5475263ed4c8a63bfca137efe68c06"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "19ba2c339547d2f2f27f8da47e3edbb3fe55a23e3d3c6c24a10e7b60a279cb1f"
    "pt-BR"
  end
  language "ru" do
    sha256 "122a36a3d385a2d995a5015455ca27037d8df76ff4b7063bb3599d7a0bebf3e8"
    "ru"
  end
  language "uk" do
    sha256 "f48e5ffc6cc70360a42f55f7c66e4bf7c6e68d4dbf7ed722d589c1906baddff1"
    "uk"
  end
  language "zh-TW" do
    sha256 "fd39f477bcdb2d252b10aa08892fcc41705fbd8c7b93a47c947882abd8587356"
    "zh-TW"
  end
  language "zh" do
    sha256 "99d09392d0f7c40e18a232d44c66ac53d010351b11441b8dc82da7fe6292accc"
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
