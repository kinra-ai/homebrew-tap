class KinCode < Formula
  include Language::Python::Virtualenv

  desc "AI-powered coding assistant CLI"
  homepage "https://github.com/kinra-ai/kin-code"
  url "https://files.pythonhosted.org/packages/source/k/kin-code/kin_code-1.0.2.tar.gz"
  sha256 "e6bdb138d2c17efc666685da770252a7565a965820722e9a2aae813ea3dbbe53"
  license "Apache-2.0"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "kin", shell_output("#{bin}/kin --version")
  end
end
