#! /bin/bash

# This repo will be changed.
git clone https://github.com/jonathanmetzman/oss-fuzz.git --depth 1 $GITHUB_WORKSPACE/oss-fuzz
python3 $GITHUB_WORKSPACE/oss-fuzz/infra/helper.py cifuzz test-project
