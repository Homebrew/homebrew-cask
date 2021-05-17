cask "unison" do
  if MacOS.version <= :yosemite
    version "2.48.3"
    sha256 "d578196d8b38f35c1e0410a1c86ff4e115a91f7eb211201db7a940a3a3e0f099"

    url "https://github.com/bcpierce00/unison/releases/download/#{version}/Unison-OS-X-#{version}.zip",
        verified: "github.com/bcpierce00/unison/"
  else
    version "2.51.4_rc2"
    sha256 "bb78ad8a6d4bfc3e530142dc108692cbf5f4c280554472de0bd83cf0234e7177"

    url "https://github.com/bcpierce00/unison/releases/download/v#{version}/unison-v#{version}.ocaml-4.12.0.macos-10.15.app.tar.gz",
        verified: "github.com/bcpierce00/unison/"
  end

  name "Unison"
  desc "File synchronizer"
  homepage "https://www.cis.upenn.edu/~bcpierce/unison/"

  conflicts_with formula: "unison"

  app "Unison.app"
  binary "#{appdir}/Unison.app/Contents/MacOS/cltool", target: "unison"

  postflight do
    system_command "/usr/bin/defaults", args: ["write", "edu.upenn.cis.Unison", "CheckCltool", "-bool", "false"]
  end
end
