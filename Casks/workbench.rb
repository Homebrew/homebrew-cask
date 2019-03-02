cask 'workbench' do
  version '1.0.5'
  sha256 '4011b4e7b50460775d1f846ca581b1321c77ed1fd12c15706a7179913358d926'

  url "https://github.com/mxcl/Workbench/releases/download/#{version}/Workbench-#{version}.zip"
  appcast 'https://github.com/mxcl/Workbench/releases.atom'
  name 'Workbench'
  homepage 'https://github.com/mxcl/Workbench'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Workbench.app'
end
