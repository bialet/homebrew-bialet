class Bialet < Formula
  desc "Bialet is a full-stack web framework made to enhance HTML with a native integration to a persistent database"
  homepage "https://github.com/bialet/bialet"
  url "https://github.com/bialet/bialet/archive/refs/tags/v0.10.5.tar.gz"
  sha256 "866a4d5605955c496fc2d2e6510ff66d9d8f98c01a8aa24511667b20da5fbd5e"
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
