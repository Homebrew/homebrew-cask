cask "xtool-creative-space" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "apple", intel: "intel"

  on_arm do
    version "1.5.10,28,348405d7-d525-4ebf-9b65-eafbcd52f5d6,2023-08-18-12-09-34"
    sha256  "f6e6a757776de1227e7678a207b12dde24ff969e85a009a646dc88b6010cb99e"
  end
  on_intel do
    version "1.5.10,16,2de5ac50-7bff-4af0-a3a9-3dc3fca88bb5,2023-08-18-12-09-42"
    sha256 "d3a9eb20263e15bec70dcfa108084f2912c30f014b937e9f1d2e9811b4aa0e0c"
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
