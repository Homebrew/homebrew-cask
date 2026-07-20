cask "unison-app" do
  arch arm: "arm64", intel: "x86-64"

  version "2.54.0"
  sha256 arm:   "e18d6b9fd401a03ab8cebceab77c578d9aa2faa7071ec59b76f36f01ed07ad4e",
         intel: "70e3057215e80fe7ecc819118a12ff5fc323d448ef37bc6c165eb1f5ca526347"

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

  depends_on :macos

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
