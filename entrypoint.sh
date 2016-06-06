#!/usr/bin/env bash
(
  #
  # create file_list.txt with one line per filename in input.
  #


  # Set cwd
  unset CDPATH
  cd "$( dirname "${BASH_SOURCE[0]}" )"

  ls -1 "/flywheel/v0/input" > "/flywheel/v0/output/file_list.txt"

  # .metadata.json required to indicate gear completed successfully.
  echo '{ "acquisition" : { "files" : [{ "name" : "file_list.txt" }] } }' > "/flywheel/v0/output/.metadata.json"
)
