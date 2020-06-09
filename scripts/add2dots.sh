#!/bin/bash

# Set the path for the dotfiles.

DOTFILEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/../files" >/dev/null 2>&1 && pwd )"

# Read and parse the command line arguments

_CMD="addfile"
_COMMAND_ARGV=("${0}")

while [[ ${#} -gt 0 ]]
do
	opt="${1}"
	shift
	case "${opt}" in
		-h|--help)
            _CMD="help"
            ;;
        *)
          _COMMAND_ARGV+=("${opt}")
    esac
done

unset "_COMMAND_ARGV[0]"

# Set up a simple "_die()" method.

_die() {
  printf "❌  "
  "${@}" 1>&2
  exit 1
}

# Set up a simple "_help()" method, to be expanded later.

_help() {
	printf "Add a file to the repository."
}

# Set up the main method for the file.

addfile() {

	_FILENAME="${_COMMAND_ARGV[1]}"

	if [[ -z "${_FILENAME}" ]]
	then
		_die printf "You must specify a valid file name to add.\\n"
	else
		local _file_basename="$(basename "${_FILENAME}")"

		local _original_file="$(cd "$(dirname "${_FILENAME}")"; pwd -P)/${_file_basename}"
		local _tracked_file="${DOTFILEDIR}/${_file_basename}"

		local _is_safe_to_proceed=0

		if [[ ! -e "${_original_file}" ]]
		then
			_die printf "File does not exist.\\n"
		elif [[ "${_file_basename}" == "/"  ]] || \
         [[ "${_file_basename}" == "."  ]] || \
         [[ "${_file_basename}" == ".." ]]
		then	
			_die printf "Invalid filename: %s\\n" "${_file_basename}"
		elif [[ -e "${_tracked_file}" ]]
		then
			_die printf "A file by that name is already in the repository.\\n"
		elif [[ -L "${_original_file}" ]]
		then
			_die printf "The original file is already a symlink.\\n"
		else
			_is_safe_to_proceed=1
		fi

		# If all checks pass
		if ((_is_safe_to_proceed))
		then
			printf "Linking %s ==> %s\\n" "${_original_file}" "${_tracked_file}"
			printf "."
			mv "${_original_file}" "${DOTFILEDIR}"
			printf "."
			ln -s "${_tracked_file}" "${_original_file}"
			printf ". Done!\\n"
		fi

	fi
}

${_CMD}