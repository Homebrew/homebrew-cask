cask 'workbench' do
  version '1.0.0'
  sha256 '4d5324c5c134ea680fab932967a612474452345b810c83617f2d07650a976203'

  url "https://github.com/mxcl/Workbench/releases/download/#{version}/Workbench-#{version}.zip"
  appcast 'https://github.com/mxcl/Workbench/releases.atom'
  name 'Workbench'
  homepage 'https://github.com/mxcl/Workbench'

  app 'Workbench.app'
end
