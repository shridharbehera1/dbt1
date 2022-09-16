{% snapshot order_snapshot %}

{{
    config(
      target_database='VWE_S3',
      target_schema='snapshots',
      unique_key='order_id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from {{ source('PUBLIC', 'mock_order') }}

{% endsnapshot %}