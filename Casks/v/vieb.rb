cask "vieb" do
  arch arm: "arm64-"

  version "12.10.0"
  sha256 arm:   "f684b6722a1e709bc8ef4e0a2c843405c680b69dc316d5ca8c9df68066eba214",
         intel: "8c7a6b2bb1becb06fd304a4b662502c0261f263f377d9ce3763e6e00b6c547f2"

  url "https://github.com/Jelmerro/Vieb/releases/download/#{version}/Vieb-#{version}-#{arch}mac.zip",
      verified: "github.com/Jelmerro/Vieb/"
  name "Vieb"
  desc "Vim Inspired Electron Browser"
  homepage "https://vieb.dev/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :monterey

  app "Vieb.app"

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)

  command_wrapper "vieb.wrapper.sh",
                  target:  "vieb",
                  content: <<~EOS
                    #!/bin/sh
                    exec '#{appdir}/Vieb.app/Contents/MacOS/Vieb' "$@"
                  EOS

  zap trash: [
    "~/Library/Application Support/Vieb",
    "~/Library/Caches/Vieb",
  ]
end
