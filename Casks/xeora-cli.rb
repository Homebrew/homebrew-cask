cask 'xeora-cli' do
  version '1.0.17506'
  sha256 '9da57f2b699a66d15c93a269651fbcbb7e0a6f3c008dec815c87c8658c1649c1'

  url "http://www.xeora.org/Tools/CLI/xeora-cli_v#{version}_macos.tgz"
  name 'Xeora CLI'
  homepage 'http://www.xeora.org/'

  depends_on cask: 'dotnet-sdk'

  binary 'xeora'

  preflight do
    FileUtils.mv "#{staged_path}/xeora", "#{staged_path}/xeora-cli"
    File.open("#{staged_path}/xeora", 'w') { |f| f.write("#!/bin/sh\nXEORAPATH=#{staged_path} #{staged_path}/xeora-cli $@\n") }
    set_permissions "#{staged_path}/xeora", '0755'
  end
end
