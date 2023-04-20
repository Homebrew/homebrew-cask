cask "unison" do
  version "2.53.2,4.14.1"
  sha256 "c73bf7944dee203f1408a08d591d3187a2480ed543007cf1cfe859ce0b22c148"

  url "https://github.com/bcpierce00/unison/releases/download/v#{version.csv.first}/Unison-v#{version.csv.first}.ocaml-#{version.csv.second}.macos-10.15.app.tar.gz",
      verified: "github.com/bcpierce00/unison/"
  name "Unison"
  desc "File synchronizer"
  homepage "https://www.cis.upenn.edu/~bcpierce/unison/"

  livecheck do
    url "https://github.com/bcpierce00/unison/releases/latest"
    regex(/href=.*?Unison[._-]v?(\d+(?:\.\d+)+)[._-]ocaml[._-]v?(\d+(?:\.\d+)+)[._-]macos/i)
    strategy :header_match do |headers, regex|
      next if headers["location"].blank?

      # Identify the latest tag from the response's `location` header
      latest_tag = File.basename(headers["location"])
      next if latest_tag.blank?

      # Fetch the assets list HTML for the latest tag and match within it
      assets_page = Homebrew::Livecheck::Strategy.page_content(
        @url.sub(%r{/releases/?.+}, "/releases/expanded_assets/#{latest_tag}"),
      )
      assets_page[:content]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
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
