class Nanoflann < Formula
  head "https://github.com/jlblancoc/nanoflann.git", :branch => "master"

  depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    args = std_cmake_args
    args << "-DBUILD_EXAMPLES=OFF"
    args << "-DBUILD_BENCHMARKS=OFF"
    args << "-DBUILD_TESTS=OFF"
    system "cmake", ".", *args
    system "make", "install"
  end
end
