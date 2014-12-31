cask :v1 => 'tikz-editor' do
  version '1.0'
  sha256 '0462af2994a5d2c3f495eb922e3cf989e3f4cff27bc545426ddc83da4a5f82db'

  url "https://github.com/downloads/fredokun/TikZ-Editor/TikZ%20Editor-#{version}.dmg"
  homepage 'https://github.com/fredokun/TikZ-Editor'
  license :oss

  app 'TikZ Editor.app'
end
