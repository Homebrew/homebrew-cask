cask "truhu" do
  version "289"
  sha256 "a5c1de3ddbf3d001fa88ac745e075b894964898388db1da7bb854c922cec792f"

  url "https://truhu-mobile-builds.s3.us-west-2.amazonaws.com/TruHu+Desktop+#{version}.dmg",
      verified: "truhu-mobile-builds.s3.us-west-2.amazonaws.com/"
  name "TruHu"
  desc "Display calibration utility"
  homepage "https://truhu.app"

  livecheck do
    url :homepage
    regex(/[{,]\s*no:\s*(\d+)\s*[},]/im)
    strategy :page_match do |page, regex|
      js_file = page[%r{src=["']?/(static/js/main[._-]\h+\.js)}, 1]
      next if js_file.blank?

      version_page = Homebrew::Livecheck::Strategy.page_content("https://truhu.app/#{js_file}")
      next if version_page[:content].blank?

      version_page[:content].scan(regex).map { |match| match[0] }
    end
  end

  depends_on macos: ">= :catalina"

  app "TruHu Mac Desktop.app"

  zap trash: [
    "~/Library/Application Support/TruHuDesktop",
    "~/Library/Caches/Seboya.TruHuCalibrator.Mac",
    "~/Library/HTTPStorages/Seboya.TruHuCalibrator.Mac",
    "~/Library/Preferences/Seboya.TruHuCalibrator.Mac.plist",
    "~/Library/WebKit/Seboya.TruHuCalibrator.Mac",
  ]
end
