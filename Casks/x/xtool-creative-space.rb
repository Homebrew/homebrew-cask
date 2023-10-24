cask "xtool-creative-space" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "apple", intel: "intel"

  on_arm do
    version "1.6.10,28,64a9a8ed-d7fb-4bf5-806e-7fffac6b5d50,2023-10-08-21-41-33"
    sha256  "ef36dc68aa7b68fd7d2e2050351261a3264af593688be2d1f18733857c338b84"
  end
  on_intel do
    version "1.6.10,16,796e6d79-1120-4b52-adc2-19b05ceacedf,2023-10-08-21-40-34"
    sha256 "46f65db2e59f8037709ffaf62a7760ba7109607756ea97c5edfdea62aeafb310"
  end

  url "https://res-us.makeblock.com/efficacy/xcs/production/packages/#{version.csv.second}/#{version.csv.third}/xTool%20Creative%20Space-#{version.csv.first}-#{version.csv.fourth}-#{arch}.dmg",
      verified: "res-us.makeblock.com/efficacy/xcs/production/packages/"
  name "xTool Creative Space"
  desc "Design and control software for xTool laser machines"
  homepage "https://www.xtool.com/pages/software"

  livecheck do
    url "https://s.xtool.com/software/download/macos-#{livecheck_arch}-chip"
    regex(%r{/([^/]+)/([^/]+)/xTool.*Creative.*Space[._-]v?(\d+(?:\.\d+)+)[._-](\d+(?:-\d+)+)[._-]#{arch}\.dmg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[3]},#{match[1]},#{match[2]},#{match[4]}"
    end
  end

  app "xTool Creative Space.app"

  zap trash: [
    "~/Library/Application Support/xTool Creative Space",
    "~/Library/Logs/xTool Creative Space",
    "~/Library/Preferences/com.makeblock.xcs.plist",
    "~/Library/Saved Application State/com.makeblock.xcs.savedState",
  ]
end
