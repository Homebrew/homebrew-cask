cask "turbo-boost-switcher" do
  version "2.13.0"
  sha256 "0f0e0e5edd8ceec49b9b744cdce72578775e2124e1c5f930c49e05ee522d98f9"

  url "https://turbo-boost-switcher.s3.amazonaws.com/Turbo_Boost_Switcher_v#{version}.dmg",
      verified: "turbo-boost-switcher.s3.amazonaws.com/"
  name "Turbo Boost Switcher"
  desc "Enable and disable the Intel CPU Turbo Boost feature"
  homepage "https://www.rugarciap.com/turbo-boost-switcher-for-os-x/"

  livecheck do
    url "https://api.rugarciap.com/tbs_version_free"
    strategy :page_match do |page|
      match = page.match(/(\d{1})(\d{2})(\d{1})/)
      next if match.blank?

      "#{match[1]}.#{match[2]}.#{match[3]}"
    end
  end

  depends_on arch: :x86_64

  suite "tbswitcher_resources"
  app "Turbo Boost Switcher.app"

  uninstall quit: "rugarciap.com.Turbo-Boost-Switcher",
            kext: "com.rugarciap.DisableTurboBoost"

  zap trash: "~/Library/Preferences/rugarciap.com.Turbo-Boost-Switcher.plist"
end
