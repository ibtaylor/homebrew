class Sophus < Formula
  head "https://github.com/strasdat/Sophus.git", :branch => "master"

  depends_on "cmake" => :build
  depends_on "eigen"
  depends_on "ceres-solver"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    args = std_cmake_args
    args << "-DBUILD_TESTS=OFF"
    system "cmake", ".", *args
    system "make", "install"
  end
end
