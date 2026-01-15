class Studylib < Formula
  desc "C++ library StudyLib (Apache 2.0)"
  homepage "https://github.com/sabir/StudyLib"
  url https://github.com/SabirDzh/StudyLib/archive/refs/tags/v1.0.0.tar.gz
  sha256 "64d25c906881138e034e6fdbb1ec5200f454316ff9a23b410840e2ac7867165d"
  license "Apache-2.0"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    assert_predicate lib/"libstudy.a", :exist?
  end
end
