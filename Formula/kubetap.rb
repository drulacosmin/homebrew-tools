class Kubetap < Formula
  include Language::Python::Virtualenv

  desc "Tap into Kubernetes clusters securely via SSH tunnels"
  homepage "https://github.com/drulacosmin/kubetap"
  url "https://files.pythonhosted.org/packages/e3/5c/a9fbf543e9aeae69817bb4127e1fcaf8508bb03b259d9cb1c0b52cd7166f/kubetap-1.0.1.tar.gz"
  sha256 "71b69593d0eddadb9f5b86b2ef5aada3f34ebffae553838a4c8ea3a58f0b43cf"
  license "MIT"

  depends_on "python@3.11"

  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/cd/e5/af35f7ea75cf72f2cd079c95ee16797de7cd71f29ea7c68ae5ce7be1eda0/PyYAML-6.0.1.tar.gz"
    sha256 "bfdf460b1736c775f2ba9f6a92bca30bc2095067b8a9d77876d1fad6cc3b4a43"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/90/c7/6dc0a455d111f68ee43f27793971cf03fe29b6ef972042549db29eec39a2/psutil-5.9.8.tar.gz"
    sha256 "6be126e3225486dff286a8fb9a06246a5253f4c7c53b475ea5f5ac934e64194c"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/b3/01/c954e134dc440ab5f96952fe52b4fdc64225530320a910473c1fe270d9aa/rich-13.7.1.tar.gz"
    sha256 "9be308cb1fe2f1f57d67ce99e95af38a1e2bc71ad9813b0e247cf7ffbcc3a432"
  end

  def install
    virtualenv_install_with_resources
    bin.install_symlink libexec/"bin/kubetap"
  end

  test do
    system "#{bin}/kubetap", "--help"
  end
end
