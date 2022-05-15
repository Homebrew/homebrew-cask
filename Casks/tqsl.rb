cask "tqsl" do
  version "2.6.1"
  sha256 "bd939da130f3b0ed8e8c0d8e48faef6fc901be394e24748c7c7168960db05bad"

  url "https://www.arrl.org/tqsl/tqsl-#{version}.pkg"
  name "Trusted QSL"
  desc "Sign and upload QSO records to Logbook of The World (LoTW)"
  homepage "https://www.arrl.org/tqsl-download"

  livecheck do
    url :homepage
    regex(%r{href=.*?/tqsl[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  depends_on macos: ">= :yosemite"

  pkg "tqsl-#{version}.pkg"

  uninstall pkgutil: "org.arrl.tqsl"

  zap trash: [
    "~/.tqsl",
    "~/Library/Preferences/org.arrl.tqsl.plist",
    "~/Library/Preferences/tqslapp Preferences",
    "~/Library/Saved Application State/org.arrl.tqsl.savedState",
  ]
end
