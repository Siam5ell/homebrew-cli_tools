class PomoCli < Formula
  desc "A basic CLI tool for pomodoro timer made in C++ with ncurses"
  homepage "https://github.com/siam5ell/pomo_cli"

  url "https://github.com/siam5ell/pomo_cli/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "31b15beabf3669912c3079c18e748544582aafc3724a58728fe08f2679c714ff"

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
