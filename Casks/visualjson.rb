cask 'visualjson' do
  version '1.6.0'
  sha256 '44e946b0a4622903e69638e4f617b94463727580d073de6ccd69b642bf9d0609'

  # github.com/youknowone/VisualJSON was verified as official when first introduced to the cask
  url "https://github.com/youknowone/VisualJSON/releases/download/v#{version}/VisualJSON.#{version.major_minor}.pkg"
  appcast 'https://github.com/youknowone/VisualJSON/releases.atom',
          checkpoint: 'c471fc1cc999ce659e8174039f8b7c09fd9e6ebdc51f0d6c97bbe862213d48ba'
  name 'VisualJSON'
  homepage 'https://youknowone.github.io/VisualJSON/'

  pkg "VisualJSON.#{version.major_minor}.pkg", allow_untrusted: true

  uninstall pkgutil: 'org.3rddev.VisualJSON'
end
