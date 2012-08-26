require 'formula'

class BrewCask < Formula
  homepage 'https://github.com/phinze/brew-cask/'
  head 'https://github.com/phinze/brew-cask.git'

  skip_clean :all

  def install

    prefix.install_p 'lib', 'rubylib'
    inreplace 'bin/brew-cask.rb', '/lib', '/rubylib'

    prefix.install 'Casks', 'bin'
    (bin+'brew-cask.rb').chmod 0755

    unless cask_symlink_dst.symlink?
      File.symlink(cask_symlink_src, cask_symlink_dst)
    end
  end

  def cask_symlink_src
    prefix+'Casks'
  end

  def cask_symlink_dst
    HOMEBREW_PREFIX.join('Library','Casks')
  end

  def caveats; <<-EOS.undent
    This formula installs a symlink that it cannot remove:
      #{cask_symlink_dst} -> #{cask_symlink_src}
    
    You'll need to remove it manually if you want to uninstall.
    EOS
  end
end