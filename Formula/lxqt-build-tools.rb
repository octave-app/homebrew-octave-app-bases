class LxqtBuildTools < Formula
  desc "Various packaging tools and scripts for LXQt applications"
  homepage "http://lxqt.org"
  url "https://github.com/lxqt/lxqt-build-tools/releases/download/0.5.0/lxqt-build-tools-0.5.0.tar.xz"
  sha256 "a66d080d4cf075007fcdd9eab1689559728418dd8f85f7e8e79679738de8658d"
  head "https://github.com/lxqt/lxqt-build-tools.git"
  
  depends_on "cmake" => :build
  depends_on "pkg-config" => :build
  depends_on "qt"
  depends_on "glib"

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make", "install"
    end
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test lxqt-build-tools`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
