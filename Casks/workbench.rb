cask 'workbench' do
  version '1.0.4'
  sha256 'e892a06910b8bbc7163900e30c5832e21762dc1328140f4175a491d8366c6b76'

  url "https://github.com/mxcl/Workbench/releases/download/#{version}/Workbench-#{version}.zip"
  appcast 'https://github.com/mxcl/Workbench/releases.atom'
  name 'Workbench'
  homepage 'https://github.com/mxcl/Workbench'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Workbench.app'
end
