cask 'xeora-cli' do
  version '1.0.17506'
  sha256 '9da57f2b699a66d15c93a269651fbcbb7e0a6f3c008dec815c87c8658c1649c1'

  url "http://www.xeora.org/Tools/CLI/xeora-cli_v#{version}_macos.tgz"
  name 'Xeora CLI'
  homepage 'http://www.xeora.org/'

  depends_on cask: 'dotnet-sdk'

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/xeora.wrapper.sh"
  binary shimscript, target: 'xeora'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      XEORAPATH="#{staged_path}" "#{staged_path}/xeora" "$@"
    EOS
  end
end
