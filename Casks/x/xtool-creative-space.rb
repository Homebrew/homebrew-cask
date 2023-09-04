cask "xtool-creative-space" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "apple", intel: "intel"

  on_arm do
    version "1.5.11,28,c2865216-d6df-49f2-82f4-4b95f1907ed2,2023-09-04-15-34-04"
    sha256  "b8980a35a8b28252c2fe2f700ebf1e04befd0f7e48489cd9a041670dc1740838"
  end
  on_intel do
    version "1.5.11,16,991f51bd-09a7-4edd-89d6-340706b219fc,2023-09-04-15-33-29"
    sha256 "7d3850bf1bf1b10042c5ef7f103ad044f8b1a5bd0064dece1fd0514ad5716f1b"
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
