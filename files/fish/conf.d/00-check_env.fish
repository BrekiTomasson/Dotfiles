set -gx CURRENT_SHELL fish

# If we're starting a non-interactive session, exit early and skip processing other stuff.

if not status --is-interactive
  exit 0
end
