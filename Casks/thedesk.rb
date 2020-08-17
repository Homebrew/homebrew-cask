cask "thedesk" do
  version "21.0.5"
  sha256 "8879a8c5f94118013d8ec934d2a26ba61f5b13dadad09ce23774d14b8f76a08f"

  # github.com/cutls/TheDesk/ was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast "https://github.com/cutls/TheDesk/releases.atom"
  name "TheDesk"
  homepage "https://thedesk.top/"

  app "TheDesk.app"
end
