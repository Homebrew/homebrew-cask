class Cask
  class AppLinker
    def initialize(cask)
      @cask = cask
    end

    def link
      @cask.linkable_apps.each do |app|
        link_app(app)
      end
    end

    def unlink
      @cask.linkable_apps.each do |app|
        unlink_app(app)
      end
    end

    def unlink_app(app)
      app_path = Cask.appdir.join(app.basename)
      app_path.delete if app_path.exist?
    end

    def remove_app_extension(path)
      Pathname(path.to_s.sub(/\.app$/, ''))
    end

    def link_app(app)
      app_path = Cask.appdir.join(app.basename)
      if app_path.directory?
        ohai "It seems there is already an app at #{app_path}; not linking."
        return
      end
      `ln -s #{app} #{app_path}`
    end
  end
end
