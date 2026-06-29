class PomoCli < Formula
  desc "A basic CLI tool for pomodoro timer made in C++ with ncurses"
  homepage "https://github.com/siam5ell/pomo_cli"

  url "https://github.com/siam5ell/pomo_cli/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "25261fb161abea8e268d126c2bb52130ebb63f0bb9f2065f6c93f006ccee546a"

  license "MIT"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build",
                    *std_cmake_args

    system "cmake", "--build", "build"

    system "cmake", "--install", "build"
  end

  test do
    system "#{bin}/pomo_cli"
  end
end
