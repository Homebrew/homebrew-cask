cask "vieb" do
  arch arm: "arm64-"

  version "9.0.0"
  sha256 arm:   "a20c80a9b1f8842dc7985a5a1d1409e7b63bcc04e9495ce7a6b21c9471d70fc6",
         intel: "ce68fd4485e58472a0f6b1461cab301d6e11ffb9a38f1ada8d0d22b08edd8cb0"

  url "https://github.com/Jelmerro/Vieb/releases/download/#{version}/Vieb-#{version}-#{arch}mac.zip",
      verified: "github.com/Jelmerro/Vieb/"
  name "Vieb"
  desc "Vim Inspired Electron Browser"
  homepage "https://vieb.dev/"

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
