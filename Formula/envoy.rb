# Copyright 2019 Tetrate Labs
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http:#www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

class Envoy < Formula
    desc "Certified, compliant and conformant builds of Envoy proxy"
    homepage "https://getenvoy.io"
    url "http://dl.bintray.com/tetrate/getenvoy/getenvoy-envoy-1.12.1.p0.g44f8c36-1p47.g93e425e-darwin-release-x86_64.tar.xz"
    version "1.12.1"
    sha256 "78222397007eb97670cdb9ca6d89fa77df7d4be2d7f6e856ff883ebfc8b65a77"

    head do
        url "http://dl.bintray.com/tetrate/getenvoy/getenvoy-envoy-1.12.1.p0.g44f8c36-1p47.g93e425e-darwin-release-x86_64.tar.xz"
        sha256 "78222397007eb97670cdb9ca6d89fa77df7d4be2d7f6e856ff883ebfc8b65a77"
    end

    stable do
        url "http://dl.bintray.com/tetrate/getenvoy/getenvoy-envoy-1.12.1.p0.g44f8c36-1p47.g93e425e-darwin-release-x86_64.tar.xz"
        sha256 "78222397007eb97670cdb9ca6d89fa77df7d4be2d7f6e856ff883ebfc8b65a77"
    end

    bottle :unneeded

    def install
        bin.install "bin/envoy"
    end

    test do
        # TODO(dio): more tests, e.g. CVE tests.
        assert_match /clean-getenvoy/, %x('#{bin}/envoy --version')
    end
end
