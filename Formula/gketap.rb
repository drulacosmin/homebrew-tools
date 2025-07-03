class Gketap < Formula
  include Language::Python::Virtualenv

  desc "Tap into GKE clusters securely via SSH tunnels"
  homepage "https://github.com/drulacosmin/gketap"
  url "https://files.pythonhosted.org/packages/1c/69/eeef4f57452fa7cde5b6a89b590ef18935689286aa943c59abefb3c676f3/gketap-1.0.0.tar.gz"
  sha256 "1dc1b2524ad4d5e9fef472c6af4782fd482f7ad6652fdde4e9b9e96cd6a5d4a5"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/gketap", "--help"
  end
end
