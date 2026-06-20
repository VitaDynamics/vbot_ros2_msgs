# InteractionRuleSwitches.msg
# Persistent on/off switches for entries in interaction_rules.yaml.
#
# Each bool field maps 1:1 to a rule's `switch.id` (snake_case in YAML).
# The matching ContextKey enum name is the uppercase form. Setters live in
# rcp_context_registration.cpp and write to RcpStatus.rule_switches.<id>.
#
# Adding a new switch:
#   1. Append `bool <id>` here (in lowercase snake_case).
#   2. Add `<ID>` (uppercase) in function_statemachine/context/context_keys.h.
#   3. Add a 3-line setter in modules/rcp_context_registration.cpp.
#   4. Add a `rcp_status.rule_switches.<id>` entry in
#      src/application/rcp/config/decision_context.yaml.
#   5. Add `switch: {id: <id>, default: <bool>}` on the rule in
#      src/application/rcp/config/interaction_rules.yaml.

# "Static Too Long -> Laydown" — auto laydown after a stand-still timeout.
bool auto_laydown_on_stand
