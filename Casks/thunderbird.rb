cask "thunderbird" do
  version "91.7.0"

  language "cs" do
    sha256 "f40bf539b9440d42678f4dcef2cf62d976700dba9afb433d777b82557be3fc37"
    "cs"
  end
  language "de" do
    sha256 "4355d103d0e69c2cf2b857c26ecabfed4e9482bbee871a1ca6c6fc8e3b630a21"
    "de"
  end
  language "en-GB" do
    sha256 "02830e00bdd9b163a1c395f73090f82ab582f65c08255cfd89062fc95d69b527"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d8504784bbd966450ca39058cdc72d435b9d4a1c42304f082059d66aaa31354c"
    "en-US"
  end
  language "fr" do
    sha256 "5490f3c4cd5ca7dff0a6178514a0d2bfb1d2646449edf172bc117f8128145bc1"
    "fr"
  end
  language "gl" do
    sha256 "eca28efbac9c0df8e3b784c279d598e10864bded0fde0a865e0f3cef1ef5a2c9"
    "gl"
  end
  language "it" do
    sha256 "f26acefe2f779b7cc5c302e3d16319341ac098e9e92fd7bc903667b55725889f"
    "it"
  end
  language "ja" do
    sha256 "28cbcc991ce41911f56febae1829db49a2c8f2ccb1811a482cf60849c88a3a38"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4eff3d05533ef762f763cc2fe7031c0a0a8008528e70299ef9761ed982200717"
    "nl"
  end
  language "pl" do
    sha256 "ce7974b820086007b6b0848740fc16ab6e730ac2afc00feed24b95ca23739875"
    "pl"
  end
  language "pt" do
    sha256 "8ce627a740f569c26c26034daf7ee5a3984a1f167c99fdd640f86162c0b1043c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "5a6df163ee9b763535cf674e24aa4afd5fba787e1b311a3010d1df37e421bbc6"
    "pt-BR"
  end
  language "ru" do
    sha256 "5b1a883a68a64521549620f91f76784ddde841aa159b0d9fddee47ebcb91ba75"
    "ru"
  end
  language "uk" do
    sha256 "cf9909050a0b3baa2c01325cc5e82b8be0bbe81c33e562eccf291058fd9e0e31"
    "uk"
  end
  language "zh-TW" do
    sha256 "5499542f896c622c14c33a9f81c4080b6ec2d20613506ad8976274332e3792a7"
    "zh-TW"
  end
  language "zh" do
    sha256 "dc7208aed82cb922bb13fbe94b3eaf1c12afacaf6257797441ad9bbcc9b3683b"
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
