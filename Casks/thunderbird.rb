cask "thunderbird" do
  version "91.1.1"

  language "cs" do
    sha256 "52367ae408681b3648ce4006118ccf84e3493b600350e5ead0102ef0e98d561e"
    "cs"
  end
  language "de" do
    sha256 "e80120f2f83328147f68aa8012ba599ed1b409bf285ab638a9dec8bf55e1aefc"
    "de"
  end
  language "en-GB" do
    sha256 "74cc20e8e3abc1722b3553d838dde1ce54a3fd29bdda8293b53ae949abcdf327"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a7f71cfbf32026820995fe2923b928d43baa5df45fc42929f51ce167e25fc8d6"
    "en-US"
  end
  language "fr" do
    sha256 "35c4225d20bbb1635854c56f8561fdb69ee99943c16208d362db12e2d721abbd"
    "fr"
  end
  language "gl" do
    sha256 "17fe5112cbeccfa8fd352d4c89d00a004b241faaa51d88b1de0e23c6af52bb69"
    "gl"
  end
  language "it" do
    sha256 "493be0eb0b71d5e168a8c0e052893a505ebb30bb52dc10fa7df3cc417c815b94"
    "it"
  end
  language "ja" do
    sha256 "b1f3662bb12153633b06324c8a3026d45eb3bd3b3e530045c4fde6404b0c2cf4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c5b3d5c9124bb3bb443763abd0578d361120a0fb7aab2e1cc8ed944c6cd82731"
    "nl"
  end
  language "pl" do
    sha256 "01aa73727719ba72efbd983fa25798bbc27f31f31f34c4746150d9b42e9265b6"
    "pl"
  end
  language "pt" do
    sha256 "2888069997048403185e1ecef0f0fe2cf09b6c8d32cf6467a66403d89b65ff9b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "bf9b0b9c351a2463d3c3865079ee052513e38ee3fdfa714133b8dffc2156fb3d"
    "pt-BR"
  end
  language "ru" do
    sha256 "59b75cd2fd61e15a61eb829077c9ca7e8372b92b4774ab7bb2fd5cf80830abbb"
    "ru"
  end
  language "uk" do
    sha256 "c45f474a798b5cb9862486c5c960a8006c791f41e67d2aebd268f756ae4c506a"
    "uk"
  end
  language "zh-TW" do
    sha256 "47474ccc9c406efdb80818a89a9335f45680921d2c5c32de154654b524a9e103"
    "zh-TW"
  end
  language "zh" do
    sha256 "acea127485fe1cc67025f8807e6108eb6738676fd314f3db3b8d77cfcf351e1a"
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
