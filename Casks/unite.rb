cask "unite" do
  version "3.1,WiusgeYwTKaK9HQ7XWkT"
  sha256 "9a16c4fdcfbd63c301102fb024a9a2d47301eb63d24d52cd307c38bbbe2bb685"

  # paddle.s3.amazonaws.com/fulfillment_downloads/20398/576531/ was verified as official when first introduced to the cask
  url "https://paddle.s3.amazonaws.com/fulfillment_downloads/20398/576531/#{version.after_comma}_Unite.zip"
  appcast "https://drive.google.com/uc?export=download&id=1pPlm8G1yluV7ipcRh-2pmXP-nATWsjTK"
  name "Unite"
  homepage "https://bzgapps.com/unite"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Unite.app"

  zap trash: [
    "~/Library/Application Support/Unite",
    "~/Library/Application Support/com.BZG.unite.*",
    "~/Library/Preferences/com.BZG.unite.*",
  ],
      rmdir: "/Users/Shared/Unite"
end
