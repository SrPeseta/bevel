genesis:
  config:
    chainId: {{ chain_id }}
    constantinoplefixblock: 0
    contractSizeLimit: 2147483647
    ethash:
      fixeddifficulty: 1000
  alloc:
{% if network.config.accounts is defined %}
{% for key in network.config.accounts %}
    {{ key | quote }}:
      balance: '90000000000000000000000'
{% endfor %}
{% endif %}
  nonce: '0x0'
  timestamp: '0x58ee40ba'
  gasLimit: '0x1fffffffffffff'
  difficulty: '0x1'
blockchain:
  nodes:
    generate: true
    count: {{ total_peer_count }}
