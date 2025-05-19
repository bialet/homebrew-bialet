class Bialet < Formula
  desc "Bialet is a full-stack web framework made to enhance HTML with a native integration to a persistent database"
  homepage "https://github.com/bialet/bialet"
  url "https://github.com/bialet/bialet/archive/refs/tags/v0.8.tar.gz"
  sha256 "b8a0c04be3b5718105cbe793465c9b30f417974621c72e0fa3649b1e439ab98b"
  license "MIT"

  depends_on "openssl@3"
  depends_on "curl"
  depends_on "sqlite"

  def install
    system "make"
    bin.install "bialet"
  end

  test do
    system "#{bin}/bialet", "-v"
  end
end
