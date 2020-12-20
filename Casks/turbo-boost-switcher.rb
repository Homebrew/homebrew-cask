cask "turbo-boost-switcher" do
  version "2.10.2"
  sha256 "561e59699f3a31ad06a4ada34cab924b48d30e62eb2542b3994c188ac7a9e712"

  url "https://turbo-boost-switcher.s3.amazonaws.com/Turbo_Boost_Switcher_v#{version}.dmg",
      verified: "turbo-boost-switcher.s3.amazonaws.com/"
  appcast "https://www.rugarciap.com/turbo-boost-switcher-for-os-x-blog/"
  name "Turbo Boost Switcher"
  desc "Enable and disable the Intel CPU Turbo Boost feature"
  homepage "https://www.rugarciap.com/turbo-boost-switcher-for-os-x/"

  suite "tbswitcher_resources"
  app "Turbo Boost Switcher.app"

  uninstall quit: "rugarciap.com.Turbo-Boost-Switcher",
            kext: "com.rugarciap.DisableTurboBoost"

  zap trash: "~/Library/Preferences/rugarciap.com.Turbo-Boost-Switcher.plist"
end
