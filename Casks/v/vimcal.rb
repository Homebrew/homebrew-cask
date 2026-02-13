cask "vimcal" do
  arch arm: "-arm64"
  host_suffix = on_arch_conditional arm: "m1", intel: "production"

  on_arm do
    version "1.0.42"
    sha256 "7f7bfe9bef171d956cf172bf01642da2ce7ac9e9cc76a50cd70347eaf11c7b79"
  end
  on_intel do
    version "1.0.43"
    sha256 "3075420adc051790c44d500811aa0143f1fc6dd3e46a97790818d96dff9acb53"
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
