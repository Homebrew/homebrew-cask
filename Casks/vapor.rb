cask "vapor" do
  version "3.5.0,03_08_21-15.48"
  sha256 "16e321be63def7c16002bdc09f2ab403fe9ad4f85595a2f24d9069e8d6530dab"

  url "https://github.com/NCAR/VAPOR/releases/download/#{version.before_comma}/VAPOR3-#{version.before_comma}-Darwin-#{version.after_comma}.dmg"
  name "VAPOR"
  desc "Visualization and analysis platform"
  homepage "https://github.com/NCAR/VAPOR"

  livecheck do
    url "https://github.com/NCAR/VAPOR/releases/latest"
    regex(/href=.*?VAPOR3[._-]v?(\d+(?:\.\d+)+)[._-]Darwin[._-](.+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex)
          .map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  app "vapor.app"
end
