class Bialet < Formula
  desc "Bialet is a full-stack web framework made to enhance HTML with a native integration to a persistent database"
  homepage "https://github.com/bialet/bialet"
  url "https://github.com/bialet/bialet/archive/refs/tags/v1.2.19.tar.gz"
  sha256 "1be13ac05ff28892f6445b21f1dc0f2f3decdfd7b97f2fd7e03c4531fc29f2b4"
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
