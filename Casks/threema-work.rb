# typed: false
# frozen_string_literal: true

cask "threema-work" do
  version "1.1.0"
  sha256 :no_check

  url "https://releases.threema.ch/web-electron/v1/release/Threema-Work-Latest.dmg"
  name "threema-work"
  desc "End-to-end encrypted instant messaging application (business version)"
  homepage "https://work.threema.ch/"

  livecheck do
    url "https://work.threema.ch/en/changelog#chl=1"
    regex(/Threema\s*Work\s*(\d+(?:\.\d+)+)\s*for\s*Desktop/i)
  end

  app "Threema Work.app"

  zap trash: [
    "~/Library/Application Support/threema-work-web",
    "~/Library/Logs/threema-work-web",
    "~/Library/Preferences/threema-work-web.plist",
    "~/Library/Saved Application State/threema-work-web.savedState",
  ]
end
