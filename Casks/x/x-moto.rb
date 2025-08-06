cask "x-moto" do
  on_sonoma :or_older do
    version "0.6.2"
    sha256 "40818cff5020b8b962f680ef7f99f6cce26b3ff1da6775bba39313461df62d44"

    caveats do
      requires_rosetta
    end
  end
  on_sequoia :or_newer do
    arch arm: "-arm64"

    on_arm do
      version "0.6.3"
      sha256 "e40aae18c90a0f41c9cc48e63c3da278f44ba1e3328804d80d4ba0819ccc9baa"
    end
    on_intel do
      version "0.6.2"
      sha256 "40818cff5020b8b962f680ef7f99f6cce26b3ff1da6775bba39313461df62d44"
    end
  end

  url "https://github.com/xmoto/xmoto/releases/download/v#{version}/xmoto-#{version}#{arch}-macos.dmg",
      verified: "github.com/xmoto/xmoto/"
  name "X-Moto"
  desc "2D motocross platform game"
  homepage "https://xmoto.tuxfamily.org/"

  # Not every release suppports both architectures, so we need to check the
  # release artifacts to find the latest version for the current architecture.
  livecheck do
    url :url
    regex(/^xmoto[._-]v?(\d+(?:\.\d+)+)#{arch}[._-]macos\.dmg$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  depends_on macos: ">= :big_sur"

  app "X-Moto.app"

  zap trash: "~/Library/Saved Application State/net.sourceforge.xmoto.savedState"
end
