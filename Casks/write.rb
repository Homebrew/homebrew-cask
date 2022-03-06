cask "write" do
  version "3.0.0"
  sha256 "036e75f00f47c3dc33cdddfe7b2449d5bcff696992389138467de1f9757b6c57"

  url "http://www.styluslabs.com/write/write#{version.no_dots}.dmg"
  name "Write"
  desc "Word processor for handwriting"
  homepage "http://www.styluslabs.com/"

  livecheck do
    url "http://www.styluslabs.com/download/write-dmg"
    regex(/write[._-]?v?(\d+)\.dmg/i)
    strategy :header_match do |header, regex|
      version = header["location"].match(regex)[1]
      version.include?(".") ? version : version.sub(/(\d)(\d)(\d)/, '\1.\2.\3')
    end
  end

  app "Write.app"

  zap trash: "~/Library/Saved Application State/com.styluslabs.write3mac.savedState"
end
