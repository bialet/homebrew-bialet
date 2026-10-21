class Bialet < Formula
  desc "Bialet is a full-stack web framework made to enhance HTML with a native integration to a persistent database"
  homepage "https://github.com/bialet/bialet"
  url "https://github.com/bialet/bialet/archive/refs/tags/v1.2.3.tar.gz"
  sha256 "feb8a5514efa6dcbecb2e477a6a79fe5947d3d27b9630f961ed428ee623ab531"
  license "MIT"

  depends_on "openssl@3"
  depends_on "curl"
  depends_on "sqlite"

  def install
    system "make"
    bin.install "build/bialet"
  end

  test do
    system "#{bin}/bialet", "-v"
  end
end
