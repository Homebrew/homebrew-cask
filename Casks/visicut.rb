cask "visicut" do
  version "1.9-113,g02234deb"
  sha256 "1370d05f4b251a3518915723bc20b2b06a7539f3f63204c10c2d9b15c4a3b419"

  url "https://download.visicut.org/files/master/MacOSX/VisiCutMac-#{version.before_comma}-#{version.after_comma}.zip"
  name "VisiCut"
  desc "Prepare, save and send jobs to Lasercutters"
  homepage "https://visicut.org/"

  livecheck do
    url "https://download.visicut.org"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/VisiCutMac[._-]v?(\d+(?:\.\d+)+-\d+)-([a-z\d]+)\.zip}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "VisiCut.app"

  caveats do
    depends_on_java "11+"
  end
end
