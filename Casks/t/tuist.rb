cask "tuist@0.8.1" do
  version "0.8.1"
  sha256 "4e121a0fa1803a9837cbfce740bedbd03531815df69ebd69dc92d555ab6b22f2"

  url "https://github.com/tuist/tuist/releases/download/app@0.8.1/Tuist.dmg"
  name "Tuist"
  desc "Tuist macOS app"
  homepage "https://github.com/tuist/tuist"

  auto_updates true
  conflicts_with formula: "tuist"

  app "Tuist.app"
end
