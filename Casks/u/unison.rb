cask "unison" do
  arch arm: "arm64", intel: "x86_64"

  version "2.53.7"
  sha256 arm:   "3dbb8257209ede50989a4442e863ad7b801a9a1ae04903dbb64c2d9b4a7be9e0",
         intel: "a64996878c94c8432cf1ef898cae389b8f75c3846834af95cb21dd399854a654"

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

  conflicts_with formula: "unison"

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
