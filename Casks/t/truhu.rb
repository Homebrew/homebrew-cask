cask "truhu" do
  version "289"
  sha256 "a5c1de3ddbf3d001fa88ac745e075b894964898388db1da7bb854c922cec792f"

  url "https://truhu-mobile-builds.s3.us-west-2.amazonaws.com/TruHu+Desktop+#{version}.dmg"
  name "TruHu"
  desc "Uses a Desktop and Mobile app together to measure your display’s colors and proceed with calibration"
  homepage "https://truhu.app/"

  # NOTE: This method isn't stable since the build hash will change
  # livecheck do
  #   url "https://truhu.app/static/js/main.9202b0c2.js"
  #   regex(/\{no:(\d+),date:"[^"]*"/i)
  # end

  # NOTE: This gets an error while trying to run it:
  #   Error: truhu: private method `open' called for URI:Module
  # Is there a better way to check/use content from 2 different URLs in a livecheck?
  livecheck do
    url "https://truhu.app/downloads/index.html"
    regex(%r{/static/js/main\.[a-f0-9]+\.js})

    strategy :page_match do |page, regex|
      # Find the script URL with the hash
      script_path = page.match(regex)
      next if script_path.blank?

      # Form the complete URL for the script
      script_full_url = "https://truhu.app#{script_path}"

      # Fetch the script content
      script_content = URI.open(script_full_url).read

      # Extract version and date
      script_content.scan(/\{no:(\d+),date:"([^"]+)"/i).map do |match|
        version, date = match
        # You can format the version and date as needed here
        "#{version},#{date}"
      end
    end
  end

  # NOTE: This is a last resort
  # livecheck do
  #   skip "No version information available"
  # end

  app "TruHu Mac Desktop.app"

  zap trash: [
    "~/Library/Application Support/TruHuDesktop",
    "~/Library/Caches/Seboya.TruHuCalibrator.Mac",
    "~/Library/HTTPStorages/Seboya.TruHuCalibrator.Mac",
    "~/Library/Preferences/Seboya.TruHuCalibrator.Mac.plist",
    "~/Library/WebKit/Seboya.TruHuCalibrator.Mac",
  ]
end
