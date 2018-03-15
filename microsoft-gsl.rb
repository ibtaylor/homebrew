class MicrosoftGsl < Formula
  head "https://github.com/Techshido/GSL.git", :branch => "master"

  depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "cmake", ".", *std_cmake_args, "-DCMAKE_BUILD_TYPE=Release"
    system "make", "install"
  end
end
