cask "vieb" do
  arch arm: "arm64-"

  version "12.8.0"
  sha256 arm:   "868766c13a732fc4fe668cf70abc7fe5999517976c7c76f296a9a8aafeae041e",
         intel: "61b62ba72872feec8c205f9a757d2bcd21ceffad4a3b38cfff2e99052e2f863b"

  url "https://github.com/Jelmerro/Vieb/releases/download/#{version}/Vieb-#{version}-#{arch}mac.zip",
      verified: "github.com/Jelmerro/Vieb/"
  name "Vieb"
  desc "Vim Inspired Electron Browser"
  homepage "https://vieb.dev/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "Vieb.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/vieb.wrapper.sh"
  binary shimscript, target: "vieb"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/Vieb.app/Contents/MacOS/Vieb' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/Vieb",
    "~/Library/Caches/Vieb",
  ]
end
