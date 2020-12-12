cask "wiznote" do
  version "2.8.7,2020-08-20"
  sha256 "043c8bf25233d711bbeb2354808dae79c431373cd9989ccdeb46ed8292b1db55"

  url "https://get.wiz.cn/wiznote-macos-#{version.after_comma}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://url.wiz.cn/u/mac",
          must_contain: version.after_comma
  name "WizNote"
  homepage "https://www.wiz.cn/wiznote-mac.html"

  app "WizNote.app"
end
