cask "usenapp" do
  version "0.80.5"
  sha256 "55e9da1c470b7de7972128315fdaa7fdcc8e14b8805289866b76b809983090fc"

  url "https://www.usenapp.com/download/Usenapp-0.80.5.dmg"
  name "Usenapp"
  desc "Newsreader / usenet client for Mac OSX"
  homepage "https://www.usenapp.com/"

  app "Usenapp.app"

  zap trash: [
             '~/Library/Application Support/Usenapp',
             '~/Library/Caches/com.xoroxsoft.usenapp',
             '~/Library/Preferences/com.xoroxsoft.usenapp.plist',
             '~/Library/Saved Application State/com.xoroxsoft.usenapp.savedState',
           ]
end
