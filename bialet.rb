class Bialet < Formula
  desc "Bialet is a full-stack web framework made to enhance HTML with a native integration to a persistent database"
  homepage "https://github.com/bialet/bialet"
  url "https://github.com/bialet/bialet/archive/refs/tags/v1.2.26.tar.gz"
  sha256 "505956f03d3f4df4295c0d6f180eae3e004f64017b0a37bc4b2225dfc6f76c0e"
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
