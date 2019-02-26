cask 'workbench' do
  version '1.0.3'
  sha256 '2747f6e5df03ddcf335c2cdde6e5d8318f989ff6090fa29b9ace78146697cfa4'

  url "https://github.com/mxcl/Workbench/releases/download/#{version}/Workbench-#{version}.zip"
  appcast 'https://github.com/mxcl/Workbench/releases.atom'
  name 'Workbench'
  homepage 'https://github.com/mxcl/Workbench'

  depends_on macos: '>= :sierra'

  app 'Workbench.app'
end
