cask "webplotdigitizer" do
  arch arm: "apple-silicon", intel: "darwin-x64"

  version "4.7"
  sha256 arm:   "e5ea8537c7809cce52c4d841ae0be89436f651924c10ab944507bb0ccd3febdb",
         intel: "1175eb93a78844e6cb9153856bb3a648c190eebc20347250eb23c4d049507fbf"

  url "https://apps.automeris.io/downloads/WebPlotDigitizer-#{version}-#{arch}.zip"
  name "WebPlotDigitizer"
  desc "Extract numerical data from plot images"
  homepage "https://automeris.io/WebPlotDigitizer.html"

  livecheck do
    url "https://automeris.io/download.html"
    regex(%r{href=.*?/WebPlotDigitizer-(\d+(?:\.\d+)*)-darwin-x64\.zip}i)
  end

  depends_on macos: ">= :catalina"

  on_arm do
    app "WebPlotDigitizer.app"
  end
  on_intel do
    app "WebPlotDigitizer-#{version}-#{arch}/WebPlotDigitizer-#{version}.app"
  end

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.webplotdigitizer.sfl*",
    "~/Library/Application Support/WebPlotDigitizer",
    "~/Library/Preferences/com.electron.webplotdigitizer.plist",
  ]
end
