cask "unison-app" do
  arch arm: "arm64", intel: "x86-64"

  version "2.53.8"
  sha256 arm:   "9ffaa166aff2bf7357d365a67dbd941a71534d5a7e65493920ebb1a804f38c89",
         intel: "4f3d8d5c2098df220b3e45bd84c9842ebf7139a595243c9533ab953cff0e95d7"

  url "https://github.com/bcpierce00/unison/releases/download/v#{version}/Unison-#{version}-macos-#{arch}.app.tar.gz"
  name "Unison"
  desc "File synchroniser"
  homepage "https://github.com/bcpierce00/unison/"

  livecheck do
    url :url
    regex(/^Unison[._-]v?(\d+(?:\.\d+)+).*?(\d+(?:\.\d+)+)?[._-]macos.*?[._-]app/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
      end
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Unison.app"
  binary "#{appdir}/Unison.app/Contents/MacOS/cltool", target: "unison"

  postflight do
    system_command "/usr/bin/defaults", args: ["write", "edu.upenn.cis.Unison", "CheckCltool", "-bool", "false"]
  end

  zap trash: [
    "~/Library/Application Support/Unison",
    "~/Library/Preferences/edu.upenn.cis.Unison.plist",
  ]
end
