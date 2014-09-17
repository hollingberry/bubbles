require 'fileutils'

HOME = ENV['HOME']

namespace :symlinks do
  task :create do
    # Symlink each dotfile to $HOME
    dotfiles.each do |dotfile|
      ln_s File.expand_path(dotfile), "#{HOME}/#{File.basename dotfile}"
    end
  end

  task :clean do
    # Remove all symlinked dotfiles in $HOME
    dotfiles.each do |dotfile|
      if File.exists? "#{HOME}/#{File.basename dotfile}"
        rm "#{HOME}/#{File.basename dotfile}", force: true
      end
    end
  end

  task :update => [:clean, :create]
end

def dotfiles
  Dir.glob('**/.*').select { |object| File.file?(object) }
end
