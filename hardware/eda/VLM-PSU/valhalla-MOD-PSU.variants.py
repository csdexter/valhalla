# The initial state is everything populated for variants and triggers ...
VARIANTS = {
    'AC': {'DNP': [
        'J2', 'F2', 'D1', 'C1', 'PS2']},
    'DC': {'DNP': [
        'J1', 'F1', 'PS1']},
    'AC/DC': None}

TRIGGERS = {
    'OR-ING': {
        'constraint': 'PS1 and PS2',
        'if': None,
        'else': {'DNP': [
            'Q4', 'Q5', 'Q6', 'R7', 'R10', 'Q7', 'Q8', 'Q9', 'R11', 'R12']}},
    'BUS': {
        'constraint': 'OPTION is (REMOTE-AC or REMOTE-DC}',
        'if': None,
        'else': {'DNP': ['J3']}}}

# ... and DNP for anything declared in an option, unless selected.
OPTIONS = {
    'REMOTE-AC': {
        'constraint': 'VARIANT is (AC or AC/DC)',
        'POP': ['Q1', 'R1', 'R2', 'U1', 'R3', 'Q2', 'R5']},
    'REMOTE-DC': {
        'constraint': 'VARIANT is (DC or AC/DC)',
        'POP': ['R4', 'U2', 'Q3', 'R6', 'R8', 'R9']}}
