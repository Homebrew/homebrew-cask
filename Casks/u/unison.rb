cask "unison" do
  arch arm: "arm64", intel: "x86_64"

  version "2.53.6"
  sha256 arm:   "a7265636bc1077f77000f058ead0a2a0de522c69fbe95a9edbacd90f5b786fdd",
         intel: "74bfc81dfc975ade4bba3fdd242a07ce4a3c5bc4d1ff8dff495082748abd8556"

  url "https://github.com/bcpierce00/unison/releases/download/v#{version}/Unison-#{version}-macos-#{arch}.app.tar.gz",
      verified: "github.com/bcpierce00/unison/"
  name "Unison"
  desc "File synchroniser"
  homepage "https://www.cis.upenn.edu/~bcpierce/unison/"

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
