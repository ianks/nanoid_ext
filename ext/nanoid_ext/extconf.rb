require 'mkmf'

$CXXFLAGS << ' -std=c++11 -fPIC '

MAKE =
  if Gem.win_platform?
    find_executable('make')
  else
    find_executable('gmake') || find_executable('make')
  end

LIBNANOID_DIR = File.join(__dir__, './../../vendor/nanoid_cpp')

def sys(cmd)
  puts " -- #{cmd}"
  unless ret = xsystem(cmd)
    raise "ERROR: '#{cmd}' failed"
  end
  ret
end

def install_deps
  sys 'git submodule update --init --recursive'
end

def build_libnanoid
  Dir.chdir LIBNANOID_DIR do
    FileUtils.mkdir_p 'build'

    Dir.chdir 'build' do
      sys 'cmake -DBUILD_CLAR=OFF -DBUILD_SHARED_LIBS=OFF -DCMAKE_CXX_FLAGS=-fPIC -DCMAKE_BUILD_TYPE=RelWithDebInfo ..'
      sys MAKE
    end
  end

  dir_config('nanoid', "#{LIBNANOID_DIR}/inc", "#{LIBNANOID_DIR}/build")

  abort 'ERROR: Failed to build libnanoid' unless have_library 'nanoid'
end

install_deps
build_libnanoid
create_makefile('nanoid/ext')
