cask "touchdesigner" do
  version "2021.13610"
  sha256 "a4b66eb3231efd94e8dd972e42b38f7d403081767ce98b5fdbff719e12f30447"

  url "https://download.derivative.ca/TouchDesigner.#{version}.dmg"
  name "Derivative TouchDesigner"
  homepage "https://www.derivative.ca/"

  livecheck do
    url "https://www.derivative.ca/download/"
    strategy :page_match
    regex(%r{href=.*?/TouchDesigner\.(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "TouchDesigner.app"
end
