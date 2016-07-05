#!/usr/bin/env bash

top_dir=$(pwd)
report_file=$top_dir/report.md

rm -f $report_file

function bench() {
  dir=$1
  cd $dir
  printf '## %s\n' `basename $dir` >> $report_file
  printf '```\n' >> $report_file
  go test -bench . -benchmem >> $report_file 2>/dev/null
  printf '```\n' >> $report_file
  cd $top_dir
}

for dir in $top_dir/bench/*
do
  bench $dir
done

sed -r -i '/(^PASS|^ok)/d' $report_file
