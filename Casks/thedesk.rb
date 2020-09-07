cask "thedesk" do
  version "21.1.1"
  sha256 "0e48a79acd67187b2dc0c381086fca21d58b6fb2b5e2e012d2460ce17ce32ca4"

  # github.com/cutls/TheDesk/ was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast "https://github.com/cutls/TheDesk/releases.atom"
  name "TheDesk"
  homepage "https://thedesk.top/"

  app "TheDesk.app"
end
