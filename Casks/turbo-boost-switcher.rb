cask "turbo-boost-switcher" do
  version "2.12.0"
  sha256 "c93c9d73839dd1b826d5651d0b6a37cde6c9959afd2a6ac9b3bac7a5b780dac8"

  url "https://turbo-boost-switcher.s3.amazonaws.com/Turbo_Boost_Switcher_v#{version}.dmg",
      verified: "turbo-boost-switcher.s3.amazonaws.com/"
  name "Turbo Boost Switcher"
  desc "Enable and disable the Intel CPU Turbo Boost feature"
  homepage "https://www.rugarciap.com/turbo-boost-switcher-for-os-x/"

  livecheck do
    url "https://www.rugarciap.com/turbo-boost-switcher-for-os-x-blog/"
    regex(%r{href=.*?/Turbo[._-]Boost[._-]Switcher[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on arch: :x86_64

  suite "tbswitcher_resources"
  app "Turbo Boost Switcher.app"

  uninstall quit: "rugarciap.com.Turbo-Boost-Switcher",
            kext: "com.rugarciap.DisableTurboBoost"

  zap trash: "~/Library/Preferences/rugarciap.com.Turbo-Boost-Switcher.plist"
end
