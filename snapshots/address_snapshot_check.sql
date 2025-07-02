{% snapshot address_Snapshot_check %}
{{
    config(
        target_schema = 'snapshots',
        strategy='check',
        unique_key='Customer_ID',
        check_cols=['address'],
    )
}}
select * from raw.customer
{%endsnapshot%}