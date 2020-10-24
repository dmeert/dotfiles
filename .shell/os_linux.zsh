#
# Linux specifics
#

if [[ "$OSTYPE" =~ ^linux ]] && [[ -f /proc/version ]] && grep -v --quiet Microsoft /proc/version ; then

  # Linux stuff here

fi
