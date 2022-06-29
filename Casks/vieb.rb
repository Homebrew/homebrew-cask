cask "vieb" do
  arch = Hardware::CPU.intel? ? "" : "arm64-"

  version "8.1.0"

  if Hardware::CPU.intel?
    sha256 "cfb9cd50f41b5d9919e94fb38d421565ccf221bddc8e82342ff37eca190c56c5"
  else
    sha256 "b3e272d0b6950a7835c920aeaf0a787db57797591192943ae1c8ca50fd4c7e79"
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
