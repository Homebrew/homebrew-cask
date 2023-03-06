cask "valhalla-supermassive" do
  version "2.5.0"
  sha256 "427a5226a84d757a65869a938d093217f4b7478213954af9fec14f15d2ea148b"

  url "https://valhallaproduction.s3.us-west-2.amazonaws.com/supermassive/ValhallaSupermassiveOSX_#{version.dots_to_underscores}.zip",
      verified: "valhallaproduction.s3.us-west-2.amazonaws.com"
  name "Valhalla Supermassive"
  desc "Best for massive reverbs, harmonic echoes, space sounds"
  homepage "https://valhalladsp.com/shop/reverb/valhalla-supermassive/"

  livecheck do
    skip "No version information available"
  end

  pkg "ValhallaSupermassiveOSX.pkg"

  uninstall pkgutil: [
    "com.valhalladsp.supermassive.pkg.vst3",
    "com.valhalladsp.supermassive.pkg.vst",
    "com.valhalladsp.supermassive.pkg.au",
    "com.valhalladsp.supermassive.pkg.presets",
    "com.valhalladsp.supermassive.pkg.aax",
  ]
end
