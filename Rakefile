# frozen_string_literal: true

require 'bundler/gem_tasks'

import "tasks/compile.rake"
import "tasks/test.rake"
import "tasks/coverage.rake"
import "tasks/docs.rake"
import "tasks/lint.rake"
import "tasks/docker.rake"

if Gem.win_platform?
  task default: %i[compile test]
else
  task default: %i[compile test lint]
end
