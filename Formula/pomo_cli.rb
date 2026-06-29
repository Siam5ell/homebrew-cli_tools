class PomoCli < Formula
  desc "A basic CLI tool for pomodoro timer made in C++ with ncurses"
  homepage "https://github.com/jishnu/pomo_cli"

  url "https://github.com/jishnu/pomo_cli/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  license "MIT"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build",
                    *std_cmake_args

    system "cmake", "--build", "build"

    system "cmake", "--install", "build"
  end

  test do
    system "#{bin}/yourtool"
  end
end
