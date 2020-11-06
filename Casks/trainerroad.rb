cask "trainerroad" do
  version :latest
  sha256 :no_check

  # trainerroadcdn1.blob.core.windows.net/ was verified as official when first introduced to the cask
  url "https://trainerroadcdn1.blob.core.windows.net/mac/releases/production/TrainerRoad.pkg"
  name "TrainerRoad"
  homepage "https://www.trainerroad.com/"

  pkg "TrainerRoad.pkg"

  uninstall pkgutil: "com.TrainerRoad.Mac"

  zap trash: "~/Library/Application Support/TrainerRoad"
end
