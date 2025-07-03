class Gketap < Formula
  include Language::Python::Virtualenv

  desc "Tap into GKE clusters securely via SSH tunnels"
  homepage "https://github.com/drulacosmin/gketap"
  url "https://files.pythonhosted.org/packages/1c/69/eeef4f57452fa7cde5b6a89b590ef18935689286aa943c59abefb3c676f3/gketap-1.0.0.tar.gz"
  sha256 "1dc1b2524ad4d5e9fef472c6af4782fd482f7ad6652fdde4e9b9e96cd6a5d4a5"
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
    url "https://files.pythonhosted.org/packages/f5/28/4d009f92d1f76ae65f2a28ae2c3254cb113f39cf2318a79a40140a53cb62/rich-13.7.1.tar.gz"
    sha256 "4376e7dc20c33c1edb0012e297b9617eae5e2e23ef6f437aa3ebf4ed8f0ef8e5"
  end


  def install
    virtualenv_install_with_resources
    bin.install_symlink libexec/"bin/gketap"
  end

  test do
    system "#{bin}/gketap", "--help"
  end
end
