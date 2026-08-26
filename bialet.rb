class Bialet < Formula
  desc "Bialet is a full-stack web framework made to enhance HTML with a native integration to a persistent database"
  homepage "https://github.com/bialet/bialet"
  url "https://github.com/bialet/bialet/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "cf19c02a644115011742393b383c7c6f165cbf2e139c6540810eadeeec322256"
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
