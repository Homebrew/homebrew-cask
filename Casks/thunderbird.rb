cask "thunderbird" do
  version "78.12.0"

  language "cs" do
    sha256 "ff45ab3e37396265bd17599c92a4259675b17e803d112b13069f59f95f379f5c"
    "cs"
  end
  language "de" do
    sha256 "71657dc28ab6d93b2e3fc080ec2e0cbc7d0b0348434ca42483dc300f809a4c28"
    "de"
  end
  language "en-GB" do
    sha256 "e1f323ed500513e79102e0a603fc94882b0eea3f5c37009513baa987bc6ee501"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9cac6c2509dd535d2c617612ae68653db195eb661dd65f61439ccfaea19c78b4"
    "en-US"
  end
  language "fr" do
    sha256 "f0a87151cf5e01ceb7ba2630444ddf5423d29a6042127c6803e5587d1ec58320"
    "fr"
  end
  language "gl" do
    sha256 "825e91b2d5dd0d5df974a8f1c202a3efcd8ddaf46c710d60742f3b0d59d7de02"
    "gl"
  end
  language "it" do
    sha256 "018184c0f5242e750c182aabeaef6b0654678cb7d9e5288d3470f123799ae4cb"
    "it"
  end
  language "ja" do
    sha256 "7bdff8bbf9daaba7a23dd193fbabb074b1a4718058878b1b67611bd3b52f820d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "225174a9d35e39a797420925306ec5724868d71b0aebdf67857c8ede0be648a9"
    "nl"
  end
  language "pl" do
    sha256 "efafbce895331baa1ff03b40897e288cba6f275f1ccceb930d3f2171a2ae2be8"
    "pl"
  end
  language "pt" do
    sha256 "d90e82a57a183b62724cf6e56515345b282438d59f1c10b8baee10f51cd8db71"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "a9be99e6b07141d307eedb62c0a1d04772a8bd1d0a8dc586406dd21efc16fe01"
    "pt-BR"
  end
  language "ru" do
    sha256 "10288bab1d98c240485825c42f81fb395997d92a1fa1c5fe38906ef8e35dda0a"
    "ru"
  end
  language "uk" do
    sha256 "7db64a72903b78a5646a809316c2a32a6fe0d3ffb82813b9592eead1c99afcae"
    "uk"
  end
  language "zh-TW" do
    sha256 "30c3a20e4ce343159f8cb40bb478c847a2237d1d1f8d3760c45d9a417ef29b53"
    "zh-TW"
  end
  language "zh" do
    sha256 "d8ef443eaff395ebb6ce3720f29849a6252b3c592c4e7cb6fa0be358057a1ab4"
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
