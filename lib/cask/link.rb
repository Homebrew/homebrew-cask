module Cask::Link
  def linkall
    Pathname.glob("#{destination_path}/**/*.app").each do |app|
      linkapp(app)
    end
  end
  
  def link!
    if active_spec.install.nil? or active_spec.install == []
      linkall
    else
      active_spec.install.each { |links|
        links.each { |type, path|
          path = destination_path.join(path)
          raise "Path doesn't exist: #{path}." unless path.exist?
          m = "link#{type}".to_sym
          self.send(m, path) if self.respond_to? m
        }
      }
    end
  end
  
protected
  
  def linkapp(path)
    symlink(path, Cask.appdir)
  end
  
  def linkpref(path)
    symlink(path, Cask.prefdir)
  end
  
  def symlink(path, dest)
    destination = dest.join(path.basename)
    target = destination_path.join(path)
    if destination.symlink?
      # destination exists but is symlink; removing and relinking
      ohai "[#{self}] re-linking #{File.basename(destination)}"
      destination.delete
      destination.make_symlink(target)
    elsif destination.directory? || destination.file?
      ohai "[#{self}] NOT linking #{File.basename(destination)} - already exists"
    else
      ohai "[#{self}] linking #{File.basename(destination)}"
      destination.make_symlink(target)
    end
  end
end
