class Gketap < Formula
  include Language::Python::Virtualenv

  desc "Tap into GKE clusters securely via SSH tunnels"
  homepage "https://github.com/drulacosmin/gketap"
  url "https://files.pythonhosted.org/packages/1c/69/eeef4f57452fa7cde5b6a89b590ef18935689286aa943c59abefb3c676f3/gketap-1.0.0.tar.gz"
  sha256 "1dc1b2524ad4d5e9fef472c6af4782fd482f7ad6652fdde4e9b9e96cd6a5d4a5"
  license "MIT"

  depends_on "python@3.11"

  resource "click" do
    url "https://files.pythonhosted.org/packages/4f/9e/ca4ea3aa1ac305fa67670d94bdb015e2f0d9f203a33d78e20f252a40d458/click-8.1.7.tar.gz"
    sha256 "3c96b3ccfd033ba510ba1981a0661a2c10a5ab2e9f99a5c797d39bd90a5e1823"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/6f/d9/8f55ec3c68c5160579babc55aa645011ed618c1b1072e60e8f11c45a3e3f/PyYAML-6.0.1.tar.gz"
    sha256 "b1a4e7ea055adf409293abfa04c2fc3b116da55c7b8b6d4d65cbe718f4d9e1c8"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/b6/20/cda9b29bdee80371b9d3f0ecfa79c9cb9bc49a0d4cf9d8c35f304e40342d/psutil-5.9.8.tar.gz"
    sha256 "b4df4329870c5188001a4a1e4076a518e028e262c701ca04f08c1e1679f628d0"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/64/82/f3f1323ab8dbe287d8b8a3b6cbcbde2603e33e7599c881f87fc90fd2344f/rich-13.7.1.tar.gz"
    sha256 "b3dbfd15c5793cb1f3cb6c5c8bfaad0123b927a5a943ef4ce63575e7e8cf1936"
  end

  def install
    virtualenv_install_with_resources

    # Ensure correct CLI wrapper in /usr/local/bin
    bin.install_symlink libexec/"bin/gketap"
  end

  test do
    system "#{bin}/gketap", "--help"
  end
end
