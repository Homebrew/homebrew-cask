cask "tqsl" do
  version "2.6.5"
  sha256 "67d0b9855edae4498b5efa87c384ef72cd99804ef973db16dac451d59dda7e6b"

  url "https://www.arrl.org/tqsl/tqsl-#{version}.pkg"
  name "Trusted QSL"
  desc "Sign and upload QSO records to Logbook of The World (LoTW)"
  homepage "https://www.arrl.org/tqsl-download"

  livecheck do
    url :homepage
    regex(%r{href=.*?/tqsl[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  pkg "tqsl-#{version}.pkg"

  uninstall pkgutil: "org.arrl.tqsl"

  zap trash: [
    "~/.tqsl",
    "~/Library/Preferences/org.arrl.tqsl.plist",
    "~/Library/Preferences/tqslapp Preferences",
    "~/Library/Saved Application State/org.arrl.tqsl.savedState",
  ]
end
