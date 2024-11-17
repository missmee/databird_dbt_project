select
    account_manager,
    state
from {{ source('gg_sheets', 'account_manager_region_mapping') }}
