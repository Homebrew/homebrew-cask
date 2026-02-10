cask "vimcal" do
  arch arm: "-arm64"
  host_suffix = on_arch_conditional arm: "m1", intel: "production"

  on_arm do
    version "1.0.42"
    sha256 "3d283925792893a43934c9f26da60025cd393d1918e04ed9c6d9b6c849776d39"
  end
  on_intel do
    version "1.0.41"
    sha256 "9957db43ab0be349174f7ae3f046a3604ab8cee4dc65d165531a41452618d69d"
  end

  url "https://vimcal-#{host_suffix}.s3.amazonaws.com/Vimcal-#{version}#{arch}.dmg",
      verified: "vimcal-#{host_suffix}.s3.amazonaws.com/"
  name "Vimcal"
  desc "Calendar"
  homepage "https://vimcal.com/"

  livecheck do
    url "https://vimcal-#{host_suffix}.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Vimcal.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vimcal.app.sfl*",
    "~/Library/Application Support/Vimcal",
    "~/Library/Preferences/com.vimcal.app.plist",
    "~/Library/Saved Application State/com.vimcal.app.savedState",
  ]
end
