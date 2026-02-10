cask "widelands-app" do
  version "1.3"

  on_sonoma :or_older do
    on_arm do
      on_ventura :or_older do
        arch arm: "12_arm64"

        sha256 "a6eaff7b271b0d046e779f976f0d8aa037886d645b4fd64c939a9f979651cca9"
      end
      on_sonoma do
        arch arm: "14_arm64"

        sha256 "e3ae23a9415645c0321e86a64be1666102c524d2e970155979c61aac9aac2845"
      end
    end
    on_intel do
      arch intel: "12_x86"

      sha256 "9370b6771f2ca9140b77c7c38b59bcda3bd3602d6d90ba0a5d6237185a768fa7"
    end
  end
  on_sequoia :or_newer do
    arch arm: "15_arm64", intel: "15_x86"

    sha256 arm:   "578fbbf53acc805fa807d37f5bea0136d3442514cd57bc4f963275086a623a72",
           intel: "92bec98b8078a6caf0efed6fffb7f01f5ba82cba0016a185ee61e2a5d009da7f"
  end

  url "https://github.com/widelands/widelands/releases/download/v#{version}/Widelands-#{version}-MacOS#{arch}.dmg",
      verified: "github.com/widelands/widelands/"
  name "Widelands"
  desc "Free real-time strategy game like Settlers II"
  homepage "https://www.widelands.org/"

  livecheck do
    url :url
    regex(/Widelands[._-]v?(\d+(?:\.\d+)+)[._-]MacOS#{arch.gsub(/[._-]/, "[._-]")}\.dmg/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.filter_map do |asset|
        asset["browser_download_url"]&.[](regex, 1)
      end
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "Widelands.app"

  zap trash: "~/.widelands"
end
