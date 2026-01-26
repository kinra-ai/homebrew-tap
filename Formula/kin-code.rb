class KinCode < Formula
  include Language::Python::Virtualenv

  desc "AI-powered coding assistant CLI"
  homepage "https://github.com/kinra-ai/kin-code"
  url "https://files.pythonhosted.org/packages/source/k/kin-code/kin_code-1.0.5.tar.gz"
  sha256 "3d5fb68bddcef3a92211c0e1211eb9ba0be1334fd15e087086bd95790b93272a"
  license "Apache-2.0"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "kin", shell_output("#{bin}/kin --version")
  end
end
