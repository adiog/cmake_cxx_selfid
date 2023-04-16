#!/bin/bash

SELFID_GENERATED_HEADER=$1

function git_current_branch() {
  git rev-parse --abbrev-ref HEAD 2> /dev/null || echo "missing_branch"
}

function git_current_tag() {
  git tag --contains HEAD 2> /dev/null
}

function git_current_commit_full() {
  git rev-parse HEAD 2> /dev/null || echo "missing_commit"
}

function git_current_commit() {
  git rev-parse --short HEAD 2> /dev/null || echo "missing_commit"
}

function git_current_is_clean() {
  (
    git update-index
    git diff-index --quiet HEAD --
  ) 2> /dev/null
}

function git_current_dirty_suffix() {
  (git_current_is_clean && echo "-clean") || echo "-dirty"
}


function current_date_time() {
  date
  #date "+%Y-%m-%d %H:%M:%S"
}

(
  echo "#pragma once"
  echo "#define SELFID_PRETTY_STRING \"`git_current_branch` (`git_current_commit``git_current_dirty_suffix`) built on `current_date_time`\""
) > $SELFID_GENERATED_HEADER
