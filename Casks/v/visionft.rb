cask "visionft" do
  version "03.00.01"
  sha256 :no_check

  url "https://files.fueltech.com.br/visionft/visionft_mac.dmg"
  name "FuelTech Vision"
  desc "Configuration and datalogger software for FuelTech FT470/FT700 ECUs"
  homepage "https://www.fueltech.net/pages/software"

  livecheck do
    url :url
    strategy :extract_plist do |items|
      items["br.com.fueltech.visionft"]&.short_version
    end
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "VisionFT.app"

  zap trash: [
    "~/Library/Application Support/FuelTech/FuelTech Vision",
    "~/Library/Caches/FuelTech/FuelTech Vision",
  ]
end
