cask "vieb" do
  arch arm: "arm64-"

  version "9.0.0"

  on_intel do
    sha256 "cfb9cd50f41b5d9919e94fb38d421565ccf221bddc8e82342ff37eca190c56c5"
  end
  on_arm do
    sha256 "a20c80a9b1f8842dc7985a5a1d1409e7b63bcc04e9495ce7a6b21c9471d70fc6"
  end

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
