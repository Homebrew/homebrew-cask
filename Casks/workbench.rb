cask 'workbench' do
  version '1.0.7'
  sha256 '346179d3613782c112f65cd349c410cc8dec5bba239f3a6e1cd0031aaa44f2e4'

  url "https://github.com/mxcl/Workbench/releases/download/#{version}/Workbench-#{version}.zip"
  appcast 'https://github.com/mxcl/Workbench/releases.atom'
  name 'Workbench'
  homepage 'https://github.com/mxcl/Workbench'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Workbench.app'
end
