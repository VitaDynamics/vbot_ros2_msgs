# RuleSwitchEntry.msg
# One persistent on/off switch belonging to an interaction_rules.yaml entry.
# Identical shape is used both as the request element of SetRuleSwitches.srv
# and as the echoed response so callers can confirm what was applied.

# Snake_case id, must match a `switch.id` declared in
# src/application/rcp/config/interaction_rules.yaml.
string id

# Desired (request) or actual (response) enable state.
bool enabled
