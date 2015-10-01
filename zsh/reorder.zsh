function {
  local boxen_paths=;
  local other_paths=;

  for directory in $path; do
    if [[ "$directory" =~ "/opt/boxen/" ]] ; then
      boxen_paths=($boxen_paths $directory)
    else
      other_paths=($other_paths $directory)
    fi
  done

  path=($boxen_paths $other_paths)
}
