cask "twelite-stage" do
  version "202508,R2"
  sha256 "4643f6d2cef4a63f3cd07a72030dadf530c195a0f386b420a151dfb8900086dc"

  url "https://dist.twelite.net/sdk/MWSTAGE#{version.csv.first}_macOS_#{version.csv.second}.zip",
      verified: "dist.twelite.net/sdk/"
  name "TWELITE STAGE SDK"
  desc "Evaluation & Development tools for TWELITE wireless modules"
  homepage "https://mono-wireless.com/jp/tools/stage/"

  livecheck do
    url "https://twelite.net/downloads.html"
    regex(/href=.*?MWSTAGE(\d{6})_macOS_(R\d+)\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on :macos

  # It is an SDK with a shell-based application that
  # includes source code and other user resources.
  # It is neither an "app" nor a "suite".
  artifact "MWSTAGE#{version.csv.first}_macOS_#{version.csv.second}", target: "~/MWSTAGE"

  zap trash: "~/MWSTAGE"
end
