class Qterminal < Formula
  desc "A lightweight Qt-based terminal emulator"
  homepage "http://lxqt.org"
  url "https://github.com/lxqt/qterminal/releases/download/0.9.0/qterminal-0.9.0.tar.xz"
  sha256 "4157980356af4e05cfe5fa3badecba6e25715a35e2b7f9a830da87bcca519fee"

  depends_on "cmake" => :build
  depends_on "lxqt-build-tools" => :build
  depends_on "qt"
  
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
    # software. Run the test with `brew test qterminal`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
