cask "vesta" do
  version "3.5.8"
  sha256 "2fcbe3dcc3701e8de6e703f5941c8d8c767855354e5929b4022c3522da2c6d2c"

  url "https://jp-minerals.org/vesta/archives/#{version}/VESTA.dmg"
  name "VESTA"
  desc "Visualisation for electronic and structural analysis"
  homepage "https://jp-minerals.org/vesta/en/"

  livecheck do
    url "https://jp-minerals.org/vesta/en/changes.html"
    regex(/>\s*ver\.\s+v?(\d+(?:\.\d+)+)[<\s]/i)
  end

  app "VESTA/VESTA.app"

  zap trash: [
    "~/Library/Application Support/VESTA",
    "~/Library/Preferences/VESTA.plist",
  ]
end
