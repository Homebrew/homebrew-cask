cask "unetbootin" do
  version "681"
  sha256 "9e6b90a15c208d7979dc1e45ccb8e7e17f669d0143ccc96c914ac42af4c4ff20"

  # github.com/unetbootin/unetbootin/ was verified as official when first introduced to the cask
  url "https://github.com/unetbootin/unetbootin/releases/download/#{version}/unetbootin-mac-#{version}.dmg"
  appcast "https://github.com/unetbootin/unetbootin/releases.atom"
  name "UNetbootin"
  desc "Tool to install Linux/BSD distributions to a partition or USB drive"
  homepage "https://unetbootin.github.io/"

  app "unetbootin.app"

  zap trash: "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.yourcompany.unetbootin.sfl*"
end
