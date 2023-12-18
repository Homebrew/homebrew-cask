cask "xtool-creative-space" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "apple", intel: "intel"

  on_arm do
    version "1.7.8,28,bef4f224-d24e-4f63-b111-8670b86dcd49,2023-11-27-17-54-11"
    sha256  "d98539f34f0b2efe1326065ea61b0c638ba2653a55a194935bdd47a79bae577b"
  end
  on_intel do
    version "1.7.8,16,16d09ac8-b6d6-4335-ae2a-c51788a6acaf,2023-11-27-17-55-01"
    sha256 "854b9e4c5397a6aa3a958b03dd3bec6c7665393132924fdedc913eefbd85056d"
  end

  url "https://storage-us.xtool.com/resource/efficacy/xcs/production/packages/#{version.csv.second}/#{version.csv.third}/xTool%20Creative%20Space-#{version.csv.first}-#{version.csv.fourth}-#{arch}.dmg"
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
