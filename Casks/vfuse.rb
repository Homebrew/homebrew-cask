cask 'vfuse' do
  version '2.0.3'
  sha256 'a69e7357bea014f4c14ac9699274f559086844ffa46563c4619bf1addfd72ad9'

  url "https://github.com/chilcote/vfuse/releases/download/#{version}/vfuse-#{version}.pkg"
  appcast 'https://github.com/chilcote/vfuse/releases.atom',
          checkpoint: '56d1707d3065bf0c75d75d7738571285273b7bf366d8f0f5a53eb8b457ad2453'
  name 'vfuse'
  homepage 'https://github.com/chilcote/vfuse'

  pkg "vfuse-#{version}.pkg"

  uninstall pkgutil: 'com.github.vfuse'

  caveats do
    files_in_usr_local
  end
end
