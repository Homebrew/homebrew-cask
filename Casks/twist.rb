cask "twist" do
  version "0.2.3,7025"
  sha256 "8dfadf3cb9f952f04c5aa3eb37c0298151fb831b5ed70ff35682d8af692eedae"

  url "https://downloads.twist.com/mac/Twist-#{version.before_comma}.dmg"
  appcast "https://downloads.twist.com/mac/AppCast.xml"
  name "Twist"
  homepage "https://twist.com/"

  depends_on macos: ">= :el_capitan"

  app "Twist.app"
end
