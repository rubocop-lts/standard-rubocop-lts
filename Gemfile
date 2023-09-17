# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }
git_source(:gitlab) { |repo_name| "https://gitlab.com/#{repo_name}" }

# Include dependencies from <gem name>.gemspec
gemspec

# Locally, depends on `export KETTLE_SOUP=core,coverage,debug,docs,repl,style,testing`
#   in the shell which is accomplished locally via .envrc
# On CI, each pipeline will set only the necessary contexts, e.g.:
#   - for current testing
#     `export KETTLE_SOUP=core,testing`
#   - for heads testing
#     `export KETTLE_SOUP=core,testing`
#   - for code coverage
#     `export KETTLE_SOUP=coverage,testing
#   - for style
#     `export KETTLE_SOUP=core,style`
# For debugging in an IDE, set KETTLE_DEBUG_IDE=true
plugin "kettle-soup", path: "/Users/pboling/src/kettle-rb/kettle-soup"
