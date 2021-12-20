cask "vesta" do
  version "3.5.7"
  sha256 "5e7110f4c09a426fd6abc0db2b6ef1fc8288e8d4ffa393a22338d93c10d792ef"

  url "https://jp-minerals.org/vesta/archives/#{version}/VESTA.dmg"
  name "VESTA"
  desc "Visualization for electronic and structural analysis"
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
