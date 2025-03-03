# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Phpln < Formula
  desc "brew php ln"
  homepage "https://github.com/pifeifei/brew-php-ln"
  url "https://github.com/pifeifei/brew-php-ln/archive/refs/tags/v0.1.2.tar.gz"
  mirror "https://gitee.com/pifeifei/brew-php-ln/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "6ea757c726508e45a0b7ee9a6072061a3401b08b328bade6191948b37a4da321"
  license "MIT"

  depends_on "php" => :test

  def install
    bin.install "phpln.sh"
    bin.install_symlink "phpln.sh" => "phpln"
  end

  test do
    assert_match "usage: phpln version",
                 shell_output("#{bin}/phpln")
  end
end
