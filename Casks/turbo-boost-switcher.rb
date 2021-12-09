cask "turbo-boost-switcher" do
  version "2.11.0"
  sha256 "f755ac05358f3cdeb8f2b34fe35595865ff87e73421350ab0568e08892541932"

  url "https://turbo-boost-switcher.s3.amazonaws.com/Turbo_Boost_Switcher_v#{version}.dmg",
      verified: "turbo-boost-switcher.s3.amazonaws.com/"
  name "Turbo Boost Switcher"
  desc "Enable and disable the Intel CPU Turbo Boost feature"
  homepage "https://www.rugarciap.com/turbo-boost-switcher-for-os-x/"

  livecheck do
    url "https://www.rugarciap.com/turbo-boost-switcher-for-os-x-blog/"
    regex(%r{href=.*?/Turbo_Boost_Switcher_v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  suite "tbswitcher_resources"
  app "Turbo Boost Switcher.app"

  uninstall quit: "rugarciap.com.Turbo-Boost-Switcher",
            kext: "com.rugarciap.DisableTurboBoost"

  zap trash: "~/Library/Preferences/rugarciap.com.Turbo-Boost-Switcher.plist"
end
