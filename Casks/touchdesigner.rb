cask "touchdesigner" do
  version "2021.13610"
  sha256 "a4b66eb3231efd94e8dd972e42b38f7d403081767ce98b5fdbff719e12f30447"

  url "https://download.derivative.ca/TouchDesigner.#{version}.dmg"
  name "Derivative TouchDesigner"
  desc "Tool for creating dynamic digital art"
  homepage "https://www.derivative.ca/"

  livecheck do
    url "https://www.derivative.ca/download/"
    regex(%r{href=.*?/TouchDesigner[._-]?v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "TouchDesigner.app"
end
