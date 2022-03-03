cask "write" do
  version :latest
  sha256 :no_check

  url "http://www.styluslabs.com/write/write300.dmg"
  name "Write"
  desc "Word processor for handwriting"
  homepage "http://www.styluslabs.com/"

  app "Write.app"

  zap trash: "~/Library/Saved Application State/com.styluslabs.write3mac.savedState"
end
