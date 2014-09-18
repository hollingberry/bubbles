require 'fileutils'

task :default => 'symlinks:update'

namespace :symlinks do
  task :update => [:clean, :create]

  task :create do
    # Symlink each file to its associated destination directory
    symlinks.each do |files, dest|
      files.each do |file|
        ln_s File.expand_path(file), "#{dest}/#{File.basename(file)}"
      end
    end
  end

  task :clean do
    # Remove each file from its associated destination directory
    symlinks.each do |files, dest|
      files.each do |file|
        if File.exists? "#{dest}/#{File.basename(file)}"
          rm "#{dest}/#{File.basename(file)}", force: true
        end
      end
    end
  end
end

def symlinks
  {
    Dir.glob('**/.*', File::FNM_DOTMATCH).select { |file| File.file? file } => ENV['HOME'],
    Dir.glob('zsh/themes/*.zsh-theme') => "#{ENV['HOME']}/.oh-my-zsh/custom"
  }
end

