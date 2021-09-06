cask "wiznote" do
  version "2020-08-20"
  sha256 "043c8bf25233d711bbeb2354808dae79c431373cd9989ccdeb46ed8292b1db55"

  url "https://get.wiz.cn/wiznote-macos-#{version}.dmg"
  name "WizNote"
  homepage "https://www.wiz.cn/wiznote-mac.html"

  livecheck do
    url "https://url.wiz.cn/u/mac"
    strategy :header_match
  end

  app "WizNote.app"
end
