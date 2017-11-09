cask 'vuescan' do
  version '9.5.91'
  sha256 '344e8cee4acdcc83cceda2214347edb92a88afe6795691058bcb4003bb86a6d0'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: '90d27e6b0350bf3d8f649f9162c28fd9039598f77900e9ec319bbd31ab8eae4f'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
