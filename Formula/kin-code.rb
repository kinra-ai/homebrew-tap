class KinCode < Formula
  include Language::Python::Virtualenv

  desc "AI-powered coding assistant CLI"
  homepage "https://github.com/kinra-ai/kin-code"
  url "https://files.pythonhosted.org/packages/source/k/kin-code/kin_code-1.0.1.tar.gz"
  sha256 "b78e84c83da19d23d37416416752fdd4b8da8af2e60ddef3bc44cc07179abf34"
  license "Apache-2.0"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "kin", shell_output("#{bin}/kin --version")
  end
end
